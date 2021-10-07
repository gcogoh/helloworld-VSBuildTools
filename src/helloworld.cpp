/**
 * @file helloworld.cpp
 * @brief VSCode template for Visual Studio BuildTools
 * @author gcogoh@users.noreply.github.com
 * @date 2020/08/08 create
 */
#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main()
{
    vector<string> msg {"Hello", "C++", "World", "from", "VS Code", "and the C++ extension!", "by Visual Studio BuildTools"};

    for (const string& word : msg)
    {
        cout << word << " ";
    }
    cout << endl;

    return 0;
}