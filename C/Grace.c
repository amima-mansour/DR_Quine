/*
	Hello program.
*/
#include <stdio.h>
#define FD fopen("Grace_kid.c", "w")
#define STR "/*%c%cHello program.%c*/%c#include <stdio.h>%c#define FD fopen(%cGrace_kid.c%c, %cw%c)%c#define STR %c%s%c%c#define FT(x)int main(){fprintf(x,STR,10,9,10,10,10,34,34,34,34,10,34,STR,34,10,10,10);fclose(x);}%cFT(FD);%c"
#define FT(x)int main(){fprintf(x,STR,10,9,10,10,10,34,34,34,34,10,34,STR,34,10,10,10);fclose(x);}
FT(FD);
