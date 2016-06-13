#include <stdio.h>
#include "helloc_nconf.h"

void feature2_greet(void)
{
	printf("%s\n", NCONF_FEATURE2_MESSAGE);
}
