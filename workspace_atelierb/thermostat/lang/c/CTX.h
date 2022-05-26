#ifndef _CTX_h
#define _CTX_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */
typedef enum
{
    CTX__IDLE_STATE,
    CTX__SETGAZ_STATE
    
} CTX__STATE;
#define CTX__STATE__max 2

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
#define CTX__S0 CTX__IDLE_STATE
/* Array and record constants */


/* Clause CONCRETE_VARIABLES */

extern void CTX__INITIALISATION(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _CTX_h */
