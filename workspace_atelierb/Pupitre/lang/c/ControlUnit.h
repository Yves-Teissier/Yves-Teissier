#ifndef _ControlUnit_h
#define _ControlUnit_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "httpServer.h"
#include "digicode.h"
#include "com_debug.h"
#include "incidentLMng.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void ControlUnit__INITIALISATION(void);

/* Clause OPERATIONS */

extern void ControlUnit__pupitre_next(CTX__STATE state, CTX__STATE *new_state);
extern void ControlUnit__panne_volontaire1_next(CTX__PANNE_VOLONTAIRE1 state, CTX__PANNE_VOLONTAIRE1 *new_state);
extern void ControlUnit__panne_volontaire2_next(CTX__PANNE_VOLONTAIRE2 state, CTX__PANNE_VOLONTAIRE2 *new_state);
extern void ControlUnit__ext_state_next(CTX__EXT_STATE state, CTX__EXT_STATE *new_state);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _ControlUnit_h */
