#include <stdio.h>
#include "helloc_nconf.h"

#if NCONF_FEATURE1
void feature1_greet(void);
#endif

#if NCONF_FEATURE2
void feature2_greet(void);
#endif

int main(int argc, char *argv[])
{
	printf("%s v%s\n\n", NCONF_PKG_NAME, NCONF_PKG_VER);
	printf("Hello There! nCrux Configuration Tool.\n\n");

	#if NCONF_FEATURE1
	feature1_greet();
	#endif

	#if NCONF_FEATURE2
	feature2_greet();
	#endif

	return 0;
}
