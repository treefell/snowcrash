#include <string.h>
#include <stdio.h>

int main(int argc, char* argv[])
{
	int fu = strlen(argv[1]);
	char str[fu];

	if (argc > 0)
	{
		for (int i=0; i < (fu); i++)
			str[i] = argv[1][i] - i;
		str[fu] = '\0';
		printf("token: %s\n", str);
	}
}
