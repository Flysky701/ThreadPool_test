#include "ThreadPool.h"

#include <iostream>
#include <vector>
#include <future>

int main() {
   
    auto get = []()
    {
        for(int i = 1; i <= 10; i ++)
            std::cout << i << " ";
        std::cout << std::endl;
    };
   
    ThreadPool abc(4);
    std::vector< std::future<void>> res;
    res.emplace_back(abc.enqueue(get));


}
// This is a test 