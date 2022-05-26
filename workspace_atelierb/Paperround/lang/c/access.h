#ifndef _access_h
#define _access_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* TODO : #define access__PRINTER__max */
/* TODO : #define access__OPTION__max */
/* Clause SETS */
typedef int access__PRINTER;
typedef int access__OPTION;
typedef enum
{
    access__ok,
    access__no
    
} access__PERMISSION;
#define access__PERMISSION__max 2

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void access__INITIALISATION(void);

/* Clause OPERATIONS */

extern void access__add(access__PRINTER pp, access__OPTION oo);
extern void access__remove(access__PRINTER pp, access__OPTION oo);
extern void access__optionquery(access__PRINTER pp, access__OPTION oo, access__PERMISSION *ans);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _access_h */
