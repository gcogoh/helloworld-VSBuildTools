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

	// foreach
	for (const string& word : msg)
	{
		cout << word << " ";
		for(int i = 0; i < 10; i++)
		{
			_sleep(100UL);
		}
	}
	cout << endl;

	return 0;
}