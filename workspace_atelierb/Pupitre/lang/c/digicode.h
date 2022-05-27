#ifndef _digicode_h
#define _digicode_h

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

extern void digicode__INITIALISATION(void);

/* Clause OPERATIONS */

extern void digicode__digi_getResponse(int32_t *response);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _digicode_h */
