#ifndef THREADPOOL_H
#define THREADPOOL_H

// #include <bits/stdc++.h> 
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
        std::vector< std::thread > workers;

        std::mutex mutex_queue;
        

    
    



}


#endif

