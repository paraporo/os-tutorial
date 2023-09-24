#include <stdio.h>

int main()
{
	int x = 0;
	while (++x < 1000000000)
		;
	printf("%b\n", x);
}
