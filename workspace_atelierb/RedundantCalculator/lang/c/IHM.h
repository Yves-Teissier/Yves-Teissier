#ifndef _IHM_h
#define _IHM_h

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

extern void IHM__INITIALISATION(void);

/* Clause OPERATIONS */

extern void IHM__print_on_state(CTX__ON_STATE state, int32_t cu);
extern void IHM__print_running_state(CTX__RUNNING_STATE state, int32_t cu);
extern void IHM__print_main_state(CTX__MAIN_STATE state, int32_t cu);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _IHM_h */
