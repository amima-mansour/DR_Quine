#include <stdio.h>
#include <stdlib.h>
int main()
{
	int i = 5;
	char *s = "#include <stdio.h>%c#include <stdlib.h>%cint main()%c{%c%cint i = %d;%c%cchar *s = %c%s%c;%c%cchar name[10] = %cSully_5.c%c;%c%cFILE *fp;%c%cchar cmd[39] = %cgcc -Wall -Wextra -Werror -c Sully_5.c%c;%c%cwhile (i >= 0)%c%c{%c%c%cfp = fopen(name,%cw%c);%c%c%cif (!fp) exit(1);%c%c%cfprintf(fp,s,10,10,10,10,9,i,10,9,34,s,34,10,9,34,34,10,9,10,9,34,34,10,9,10,9,10,9,9,34,34,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,10,10);%c%c%cfclose(fp);%c%c%c--i;%c%c%cname[6] -= 1;%c%c%csystem(cmd);%c%c%ccmd[35] -= 1;%c%c}%c}%c";
	char name[10] = "Sully_5.c";
	FILE *fp;
	char cmd[39] = "gcc -Wall -Wextra -Werror -c Sully_5.c";
	while (i >= 0)
	{
		fp = fopen(name,"w");
		if (!fp) exit(1);
		fprintf(fp,s,10,10,10,10,9,i,10,9,34,s,34,10,9,34,34,10,9,10,9,34,34,10,9,10,9,10,9,9,34,34,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,10,10);
		fclose(fp);
		--i;
		name[6] -= 1;
		system(cmd);
		cmd[35] -= 1;
	}
}
