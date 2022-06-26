#ifndef _ControlUnit2_h
#define _ControlUnit2_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "MailBox.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
#define ControlUnit2__CU2_IS_FIRST_SLAVE false
/* Array and record constants */


/* Clause CONCRETE_VARIABLES */

extern void ControlUnit2__INITIALISATION(void);

/* Clause OPERATIONS */

extern void ControlUnit2__cu2_next_main_state(CTX__MAIN_STATE state, CTX__MAIN_STATE *next_main_state);
extern void ControlUnit2__cu2_next_on_state(CTX__ON_STATE state, CTX__ON_STATE *next_on_state);
extern void ControlUnit2__cu2_next_running_state(CTX__RUNNING_STATE state, CTX__RUNNING_STATE *next_running_state);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _ControlUnit2_h */
