#include <stdio.h>
#include "simple_nct.h"

int main(int argc, char *argv[])
{
	printf("MYBOOL = %d\n", NCT_MYBOOL);
	printf("MYSTRING = %s\n", NCT_MYSTRING);
	printf("MYTRISTATE = %d\n", NCT_MYTRISTATE);
	printf("MYINT = %d\n", NCT_MYINT);
	printf("MYHEX = 0x%x\n", NCT_MYHEX);
	return 0;
}
