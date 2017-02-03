#include <time.h>
#include <stdlib.h>
#include "Rand.h"

int const maxRandNumber = 10;
int rand10()
{
	srand(time(0));
	return rand() % (maxRandNumber + 1);
}