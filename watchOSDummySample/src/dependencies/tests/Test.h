#ifndef __TEST_H
#define __TEST_H

#include <iostream>

class Test {
public:
	Test() {}

	int add(int a, int b) {
		return a + b;
	}


	void print(const char* input){
		std::cout << input << std::endl;
	}

	~Test() {}
};
#endif