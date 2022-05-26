#ifndef _chaudiere_h
#define _chaudiere_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void chaudiere__INITIALISATION(void);

/* Clause OPERATIONS */

extern void chaudiere__start_chaudiere(void);
extern void chaudiere__stop_chaudiere(void);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _chaudiere_h */
