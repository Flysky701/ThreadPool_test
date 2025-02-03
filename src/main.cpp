#include "ThreadPool.h"

#include <iostream>
#include <vector>
#include <future>

int main()
{

    auto get = []()
    {
        for (int i = 1; i <= 10; i++)
            std::cout << i << " ";
        std::cout << std::endl;
    };

    ThreadPool abc(4);
    std::vector<std::future<void>> res;
    for (int i = 1; i <= 10; i++)
    {
        res.emplace_back(abc.enqueue(get));
    }

    ThreadPool pool(4);
    std::vector<std::future<int>> results;
    for (int i = 0; i < 8; ++i)
    {
        results.emplace_back(
            pool.enqueue([i]
                         {
                  std::cout << "hello " << i << std::endl;
                  std::this_thread::sleep_for(std::chrono::seconds(1));
                  std::cout << "world " << i << std::endl;
                  return i*i; }));
    }
    for (auto &&result : results)
        std::cout << result.get() << ' ';
    std::cout << std::endl;

    int a;
    std::cin >> a;
}
// This is a test