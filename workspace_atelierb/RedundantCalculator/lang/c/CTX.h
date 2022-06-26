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
    CTX__UNKNOWN,
    CTX__SLAVE,
    CTX__MASTER
    
} CTX__RUNNING_STATE;
#define CTX__RUNNING_STATE__max 3
typedef enum
{
    CTX__ERROR,
    CTX__SHUTDOWN,
    CTX__OFF,
    CTX__ON
    
} CTX__MAIN_STATE;
#define CTX__MAIN_STATE__max 4
typedef enum
{
    CTX__ON_IDLE,
    CTX__INITIALIZING,
    CTX__RUNNING
    
} CTX__ON_STATE;
#define CTX__ON_STATE__max 3

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* TO DO: #define CTX__U_MIN */
/* TO DO: #define CTX__U_UNDER */
/* TO DO: #define CTX__U_OVER */
/* TO DO: #define CTX__U_HIGH */
/* TO DO: #define CTX__U_LOW */
/* Array and record constants */






/* Clause CONCRETE_VARIABLES */

extern void CTX__INITIALISATION(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _CTX_h */
