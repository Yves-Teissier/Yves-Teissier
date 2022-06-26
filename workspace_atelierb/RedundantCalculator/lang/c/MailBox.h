#ifndef _MailBox_h
#define _MailBox_h

#include <stdint.h>
#include <stdbool.h>
/* Clause SEES */
#include "CTX.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/* Clause SETS */

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void MailBox__INITIALISATION(void);

/* Clause OPERATIONS */

extern void MailBox__mb_get_cu_main_state(int32_t level, int32_t cu, CTX__MAIN_STATE *resp_cu_main_state);
extern void MailBox__mb_get_cu_on_state(int32_t level, int32_t cu, CTX__ON_STATE *resp_cu_on_state);
extern void MailBox__mb_get_cu_running_state(int32_t level, int32_t cu, CTX__RUNNING_STATE *resp_cu_running_state);
extern void MailBox__mb_getCurrentU(int32_t *resp_current_u);
extern void MailBox__mb_getCU1Error(bool *resp_cu1_error);
extern void MailBox__mb_getCU2Error(bool *resp_cu2_error);
extern void MailBox__mb_set_on_state(CTX__ON_STATE state, int32_t cu);
extern void MailBox__mb_set_running_state(CTX__RUNNING_STATE state, int32_t cu);
extern void MailBox__mb_set_main_state(CTX__MAIN_STATE state, int32_t cu);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _MailBox_h */
