#ifndef _MultRussian_h
#define _MultRussian_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void MultRussian__INITIALISATION(void);

/* Clause OPERATIONS */

extern void MultRussian__Mult(int32_t aa, int32_t bb, int32_t *total);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _MultRussian_h */
