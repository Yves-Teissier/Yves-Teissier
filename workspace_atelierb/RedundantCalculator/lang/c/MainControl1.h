#ifndef _MainControl1_h
#define _MainControl1_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "ControlUnit1.h"
#include "MailBox.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void MainControl1__INITIALISATION(void);

/* Clause OPERATIONS */

extern void MainControl1__cu1_run(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _MainControl1_h */
