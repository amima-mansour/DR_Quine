#include <stdio.h>
#include <stdlib.h>
int main()
{
	int i = 5;
	char *s = "#include <stdio.h>%c#include <stdlib.h>%cint main()%c{%c%cint i = %d;%c%cchar *s = %c%s%c;%c%cchar name[10] = %cSully_5.c%c;%c%cchar exec[10] = %c./Sully_5%c;%c%cFILE *fp;%c%cchar cmd[50] = %cgcc -Wall -Wextra -Werror -o Sully_5 Sully_5.c%c;%c%cwhile (i >= 0)%c%c{%c%c%cfp = fopen(name,%cw%c);%c%c%cif (!fp) exit(1);%c%c%cfprintf(fp,s,10,10,10,10,9,i,10,9,34,s,34,10,9,34,34,10,9,34,34,10,9,10,9,34,34,10,9,10,9,10,9,9,34,34,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,10,10);%c%c%cfclose(fp);%c%c%c--i;%c%c%cname[6] -= 1;%c%c%csystem(cmd);%c%c%csystem(exec);%c%c%ccmd[35] -= 1;%c%c%ccmd[43] -= 1;%c%c%cexec[8] -= 1;%c%c}%c}%c";
	char name[10] = "Sully_5.c";
	char exec[10] = "./Sully_5";
	FILE *fp;
	char cmd[50] = "gcc -Wall -Wextra -Werror -o Sully_5 Sully_5.c";
	while (i >= 0)
	{
		fp = fopen(name,"w");
		if (!fp) exit(1);
		fprintf(fp,s,10,10,10,10,9,i,10,9,34,s,34,10,9,34,34,10,9,34,34,10,9,10,9,34,34,10,9,10,9,10,9,9,34,34,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,9,10,9,10,10);
		fclose(fp);
		--i;
		name[6] -= 1;
		system(cmd);
		system(exec);
		cmd[35] -= 1;
		cmd[43] -= 1;
		exec[8] -= 1;
	}
}
