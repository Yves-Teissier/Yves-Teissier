#ifndef _temperature_h
#define _temperature_h

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

extern void temperature__INITIALISATION(void);

/* Clause OPERATIONS */

extern void temperature__temperature_get_temperature(int32_t *new_temperature);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _temperature_h */
