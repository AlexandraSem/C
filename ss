#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define STRING_SIZE 170
#define SIZE 50
/*
	170:0-169
	0-49 name
	58-107 last
	120-169 middle
*/
void stringToFile(char const* const str)
{
	FILE* f = fopen("d:\\tmp.bin", "wb");
	strcpy(str, "Rise");
	fseek(f, 1, SEEK_CUR);
	strcpy(str, "and");
	fseek(f, 49, SEEK_CUR);
	strcpy(str, "shine");
	fwrite(str, STRING_SIZE,3, f);
	fclose(f);
}
void stringFromFile(char* str)
{
	FILE* f = fopen("d:\\tmp.bin", "rb");
	fread(str, STRING_SIZE, 1, f);
	fclose(f);
}

int main()
{	
	char* buff = malloc(STRING_SIZE);
	for (int i = 0; i < STRING_SIZE; i++)
	{
		buff[i] = 0;
	}

	
	

	stringToFile(buff);
	/*for (int i = 0; i < STRING_SIZE; i++)
	{
		buff[i] = 0;
	}*/

	memset(buff,0, STRING_SIZE);
	stringFromFile(buff);
	printf("From: %s",buff);
	free(buff);
}
