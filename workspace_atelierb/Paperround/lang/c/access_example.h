#ifndef _access_example_h
#define _access_example_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* TODO : #define access_example__PRINTER__max */
/* TODO : #define access_example__OPTION__max */
/* Clause SETS */
typedef access__PRINTER access_example__PRINTER;
typedef access__OPTION access_example__OPTION;
typedef enum
{
    access_example__ok,
    access_example__no
    
} access_example__PERMISSION;
#define access_example__PERMISSION__max 2

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* TO DO: #define access_example__brother */
/* TO DO: #define access_example__hp */
/* TO DO: #define access_example__lexmak */
/* TO DO: #define access_example__rectoverso */
/* TO DO: #define access_example__couleur */
/* TO DO: #define access_example__ppp100 */
/* Array and record constants */







/* Clause CONCRETE_VARIABLES */

extern void access_example__INITIALISATION(void);


#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _access_example_h */
