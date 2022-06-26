#ifndef _MainControl_h
#define _MainControl_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "ControlUnit2.h"
#include "MailBox.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void MainControl__INITIALISATION(void);

/* Clause OPERATIONS */

extern void MainControl__cu2_run(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _MainControl_h */
