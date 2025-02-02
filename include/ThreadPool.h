#ifndef THREADPOOL_H
#define THREADPOOL_H

#include <bits/stdc++.h> 
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
        auto ThreadPool::enqueue(F &&f,Args&&... args )
            -> std::future<typename std::result_of<F(Args...)> :: type>;
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
            {
                
            }
        }
    };
    for(size_t i = 0; i <= threads; i ++){
        workers.emplace_back(fun)
    }
}



#endif

