#ifndef THREADPOOL_H
#define THREADPOOL_H

#include <vector>
#include <queue>
#include <memory>
#include <thread>
#include <mutex>
#include <condition_variable>
#include <future>
#include <functional>
#include <stdexcept>



class ThreadPool{
    public:
        ThreadPool (size_t);
        template<class F, class... Args> 
        auto enqueue(F &&f,Args&&... args ) -> std::future<typename std::result_of<F(Args...)>::type>;
        ~ThreadPool();
    
    private:
        std::vector< std::thread > workers; // 存放线程的数组
        std::queue< std::function<void()>> tasks; //  存放任务的队列
        std::mutex mutex_queue; // 互斥锁
        std::condition_variable condition;
        bool stop;
};

inline ThreadPool::ThreadPool (size_t threads)
    :stop(false)
{
    auto fun =[this]{
        while(1){
            std::function<void()> task;
            // 括号限定线程锁的
            {
                std::unique_lock<std::mutex> lock (this -> mutex_queue);
                this -> condition.wait(lock, [this]{
                    return this -> stop || !this -> tasks.empty();
                });  

                if(this -> stop && this -> tasks.empty())  return;
                task = std::move(this -> tasks.front());
                this -> tasks.pop();
            }

            task();
        }
    };

    for(size_t i = 0; i < threads; i ++){
        workers.emplace_back(fun);
    }
}
template <class F, class... Args>
inline auto ThreadPool::enqueue(F &&f, Args &&...args) -> std::future<typename std::result_of<F(Args...)>::type>
{
    using type_rt = typename std::result_of<F(Args...)>::type;
    
    auto task = std::make_shared<std::packaged_task <type_rt()>> (
        std:: bind(std::forward<F>(f), std::forward <Args>(args)...)
    );

    std::future<type_rt> res = task -> get_future(); 

    {
        std::unique_lock<std::mutex> lock(mutex_queue);
        if(stop)
            throw std::runtime_error("enqueue stop the ThreadPool");

        tasks.emplace([task](){ (*task)(); });
    }
    condition.notify_one();
    return res;
}

inline ThreadPool::~ThreadPool(){
    {
        std::unique_lock<std::mutex> lock(mutex_queue);
        stop = true;
    }
    condition.notify_all();
    for(std::thread &worker: workers)
        worker.join();

}

#endif