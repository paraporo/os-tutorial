#include <stdio.h>

int main(void)
{
	int b = 5;
	printf(">%d\n", --b);
	int a = 1;
	while (--a > 0)
	{
		printf("%d\n", a);
	}
	for (int i = 0; i < 10; i++)
		;
	return 0;
}
