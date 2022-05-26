#ifndef _timer_h
#define _timer_h

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

extern void timer__INITIALISATION(void);

/* Clause OPERATIONS */

extern void timer__timer_wait(int32_t aDelay);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _timer_h */
