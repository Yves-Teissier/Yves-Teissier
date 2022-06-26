#ifndef _PowerSupplyCtrl_h
#define _PowerSupplyCtrl_h

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

extern void PowerSupplyCtrl__INITIALISATION(void);

/* Clause OPERATIONS */

extern void PowerSupplyCtrl__is_powered(bool *isPowered);
extern void PowerSupplyCtrl__getU(int32_t *current_u);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _PowerSupplyCtrl_h */
