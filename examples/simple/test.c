#include <stdio.h>
#include "simple_conf.h"

int main(int argc, char *argv[])
{
	printf("MYBOOL = %d\n", NCONFIG_MYBOOL);
	printf("MYSTRING = %s\n", NCONFIG_MYSTRING);
	printf("MYTRISTATE = %d\n", NCONFIG_MYTRISTATE);
	printf("MYINT = %d\n", NCONFIG_MYINT);
	printf("MYHEX = 0x%x\n", NCONFIG_MYHEX);
	return 0;
}
