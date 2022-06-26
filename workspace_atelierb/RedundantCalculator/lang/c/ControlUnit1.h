#ifndef _ControlUnit1_h
#define _ControlUnit1_h

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
#define ControlUnit1__CU1_IS_FIRST_SLAVE true
/* Array and record constants */


/* Clause CONCRETE_VARIABLES */

extern void ControlUnit1__INITIALISATION(void);

/* Clause OPERATIONS */

extern void ControlUnit1__cu1_next_main_state(CTX__MAIN_STATE state, CTX__MAIN_STATE *next_main_state);
extern void ControlUnit1__cu1_next_on_state(CTX__ON_STATE state, CTX__ON_STATE *next_on_state);
extern void ControlUnit1__cu1_next_running_state(CTX__RUNNING_STATE state, CTX__RUNNING_STATE *next_running_state);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _ControlUnit1_h */
