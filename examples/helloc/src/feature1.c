#include <stdio.h>
#include "helloc_nconf.h"

void feature1_greet(void)
{
	printf("%s\n", NCONF_FEATURE1_MESSAGE);
}
