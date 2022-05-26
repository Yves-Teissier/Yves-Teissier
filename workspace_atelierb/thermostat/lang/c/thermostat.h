#ifndef _thermostat_h
#define _thermostat_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "CTX.h"

/* Clause INCLUDES */
#include "target.h"
#include "temperature.h"
#include "chaudiere.h"
#include "timer.h"

/* Clause IMPORTS */
#include "target.h"
#include "temperature.h"
#include "chaudiere.h"
#include "timer.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void thermostat__INITIALISATION(void);

/* Clause OPERATIONS */

extern void thermostat__thermostat_set_context(void);
extern void thermostat__thermostat_next(CTX__STATE state, CTX__STATE *new_state);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _thermostat_h */
