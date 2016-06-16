#include <stdio.h>
#include "helloc_nct.h"

#if NCT_FEATURE1
void feature1_greet(void);
#endif

#if NCT_FEATURE2
void feature2_greet(void);
#endif

int main(int argc, char *argv[])
{
	printf("%s v%s\n\n", NCT_PKG_NAME, NCT_PKG_VER);
	printf("Hello There! nCrux Configuration Tool.\n\n");

	#if NCT_FEATURE1
	feature1_greet();
	#endif

	#if NCT_FEATURE2
	feature2_greet();
	#endif

	#if NCT_FEATURE3
	feature3_greet();
	#endif

	#if NCT_FEATURE4
	feature4_greet();
	#endif

	return 0;
}
