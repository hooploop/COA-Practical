#include <iostream>
using namespace std;

extern "C" {
	void decreasingSeq(long num[10], int arrSize);
}

int main() {
	signed long num[10] = { -5,10,20,80,73,32,20,22,19,-5 };

	decreasingSeq(num, 10);     

	return 0;
}