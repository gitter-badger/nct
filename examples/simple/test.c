#include <stdio.h>
#include "simple_nconf.h"

int main(int argc, char *argv[])
{
	printf("MYBOOL = %d\n", NCONF_MYBOOL);
	printf("MYSTRING = %s\n", NCONF_MYSTRING);
	printf("MYTRISTATE = %d\n", NCONF_MYTRISTATE);
	printf("MYINT = %d\n", NCONF_MYINT);
	printf("MYHEX = 0x%x\n", NCONF_MYHEX);
	return 0;
}
