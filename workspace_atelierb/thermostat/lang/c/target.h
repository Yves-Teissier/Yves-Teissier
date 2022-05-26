#ifndef _target_h
#define _target_h

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

extern void target__INITIALISATION(void);

/* Clause OPERATIONS */

extern void target__target_get_target(int32_t *ret_target);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _target_h */
