#include <stdio.h>
/*
	Hello program.
*/
void print(char *s)
{
	printf(s,10,10,9,10,10,10,10,9,10,10,10,10,9,10,9,9,10,9,10,9,34,s,34,10,9,10,9,10,10);
}
int main()
{
	/*
		Hello main.
	*/
	char *s = "#include <stdio.h>%c/*%c%cHello program.%c*/%cvoid print(char *s)%c{%c%cprintf(s,10,10,9,10,10,10,10,9,10,10,10,10,9,10,9,9,10,9,10,9,34,s,34,10,9,10,9,10,10);%c}%cint main()%c{%c%c/*%c%c%cHello main.%c%c*/%c%cchar *s = %c%s%c;%c%cprint(s);%c%creturn (0);%c}%c";
	print(s);
	return (0);
}
