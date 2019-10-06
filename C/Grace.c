/*
	Hello program.
*/
#include <stdio.h>
#include <stdlib.h>
#define FP fopen("Grace_kid.c", "w")
#define STR "/*%c%cHello program.%c*/%c#include <stdio.h>%c#include <stdlib.h>%c#define FP fopen(%cGrace_kid.c%c, %cw%c)%c#define STR %c%s%c%c#define FT(x)int main(){if (FP == NULL)exit(-1);fprintf(x,STR,10,9,10,10,10,10,34,34,34,34,10,34,STR,34,10,10,10);fclose(x);}%cFT(FP);%c"
#define FT(x)int main(){if (FP == NULL)exit(-1);fprintf(x,STR,10,9,10,10,10,10,34,34,34,34,10,34,STR,34,10,10,10);fclose(x);}
FT(FP);