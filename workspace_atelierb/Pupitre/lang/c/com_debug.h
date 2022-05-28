#ifndef _com_debug_h
#define _com_debug_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "CTX.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void com_debug__INITIALISATION(void);

/* Clause OPERATIONS */

extern void com_debug__debug_print_state(CTX__STATE state);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _com_debug_h */
