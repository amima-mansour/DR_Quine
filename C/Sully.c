#include <stdio.h>
int main()
{
	int i = 5;
	char *s = "#include <stdio.h>%cint main()%c{%c%cint i = %d;%c%cchar *s = %c%s%c;%c%cchar name[10] = %cSully_5.c%c;%c%cFILE *fd;%c%cwhile (i >= 0)%c%c{%c%c%cfd = fopen(name,%cw%c);%c%c%cfprintf(fd,s,10,10,10,9,i,10,9,34,s,34,10,9,34,34,10,9,10,9,10,9,10,9,9,34,34,10,9,9,10,9,9,10,9,9,10,9,9,10,9,10,10);%c%c%cfclose(fd);%c%c%c--i;%c%c%cname[6] -= 1;%c%c}%c}%c";
	char name[10] = "Sully_5.c";
	FILE *fd;
	while (i >= 0)
	{
		fd = fopen(name,"w");
		fprintf(fd,s,10,10,10,9,i,10,9,34,s,34,10,9,34,34,10,9,10,9,10,9,10,9,9,34,34,10,9,9,10,9,9,10,9,9,10,9,9,10,9,10,10);
		fclose(fd);
		--i;
		name[6] -= 1;
	}
}
