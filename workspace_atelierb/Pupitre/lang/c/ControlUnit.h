#ifndef _ControlUnit_h
#define _ControlUnit_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "httpServer.h"
#include "digicode.h"

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

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _ControlUnit_h */
