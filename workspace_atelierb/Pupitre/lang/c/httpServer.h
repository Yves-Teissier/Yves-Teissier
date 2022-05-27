#ifndef _httpServer_h
#define _httpServer_h

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

extern void httpServer__INITIALISATION(void);

/* Clause OPERATIONS */

extern void httpServer__handleRequest(void);
extern void httpServer__httpServer_get_debut_request(int32_t *debutRequest);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _httpServer_h */
