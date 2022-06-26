#ifndef _Main_h
#define _Main_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "MainControl.h"
#include "MainControl1.h"
#include "MailBox.h"
#include "IHM.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void Main__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Main__run(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Main_h */
