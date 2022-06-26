/* WARNING if type checker is not performed, translation could contain errors ! */

#include <stdio.h>
#include "MailBox.h"

/* Clause SEES */
#include "CTX.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static CTX__ON_STATE MailBox__cu1_on_state;
static CTX__ON_STATE MailBox__cu2_on_state;
static CTX__RUNNING_STATE MailBox__cu1_running_state;
static CTX__RUNNING_STATE MailBox__cu2_running_state;
static CTX__MAIN_STATE MailBox__cu1_main_state;
static CTX__MAIN_STATE MailBox__cu2_main_state;
static CTX__ON_STATE MailBox__prev_cu1_on_state;
static CTX__ON_STATE MailBox__prev_cu2_on_state;
static CTX__RUNNING_STATE MailBox__prev_cu1_running_state;
static CTX__RUNNING_STATE MailBox__prev_cu2_running_state;
static CTX__MAIN_STATE MailBox__prev_cu1_main_state;
static CTX__MAIN_STATE MailBox__prev_cu2_main_state;
/* Clause INITIALISATION */
void MailBox__INITIALISATION(void)
{
    
    MailBox__cu1_on_state = CTX__ON_IDLE;
    MailBox__cu2_on_state = CTX__ON_IDLE;
    MailBox__cu1_running_state = CTX__UNKNOWN;
    MailBox__cu2_running_state = CTX__UNKNOWN;
    MailBox__cu1_main_state = CTX__OFF;
    MailBox__cu2_main_state = CTX__OFF;
    MailBox__prev_cu1_on_state = CTX__ON_IDLE;
    MailBox__prev_cu2_on_state = CTX__ON_IDLE;
    MailBox__prev_cu1_running_state = CTX__UNKNOWN;
    MailBox__prev_cu2_running_state = CTX__UNKNOWN;
    MailBox__prev_cu1_main_state = CTX__OFF;
    MailBox__prev_cu2_main_state = CTX__OFF;
}

/* Clause OPERATIONS */

void MailBox__mb_get_cu_main_state(int32_t level, int32_t cu, CTX__MAIN_STATE *resp_cu_main_state)
{
    if(cu == 1)
    {
        if(level == 0)
        {
            (*resp_cu_main_state) = MailBox__prev_cu1_main_state;
        }
        else
        {
            (*resp_cu_main_state) = MailBox__cu1_main_state;
        }
    }
    else
    {
        if(level == 0)
        {
            (*resp_cu_main_state) = MailBox__prev_cu2_main_state;
        }
        else
        {
            (*resp_cu_main_state) = MailBox__cu2_main_state;
        }
    }
}

void MailBox__mb_get_cu_running_state(int32_t level, int32_t cu, CTX__RUNNING_STATE *resp_cu_running_state)
{
    if(cu == 1)
    {
        if(level == 0)
        {
            (*resp_cu_running_state) = MailBox__cu1_running_state;
        }
        else
        {
            (*resp_cu_running_state) = MailBox__prev_cu1_running_state;
        }
    }
    else
    {
        if(level == 0)
        {
            (*resp_cu_running_state) = MailBox__cu2_running_state;
        }
        else
        {
            (*resp_cu_running_state) = MailBox__prev_cu2_running_state;
        }
    }
}

void MailBox__mb_get_cu_on_state(int32_t level, int32_t cu, CTX__ON_STATE *resp_cu_on_state)
{
    if(cu == 1)
    {
        if(level == 0)
        {
            (*resp_cu_on_state) = MailBox__cu1_on_state;
        }
        else
        {
            (*resp_cu_on_state) = MailBox__prev_cu1_on_state;
        }
    }
    else
    {
        if(level == 0)
        {
            (*resp_cu_on_state) = MailBox__cu2_on_state;
        }
        else
        {
            (*resp_cu_on_state) = MailBox__prev_cu2_on_state;
        }
    }
}

void MailBox__mb_getCurrentU(int32_t *resp_current_u)
{
  printf("Saisie tension [0,4] ? = ");
  fflush( stdout );
  scanf("%d", resp_current_u);
}

void MailBox__mb_getCU1Error(bool *resp_cu1_error)
{
  printf("Error UC1\n");
  printf("0 = no error\n");
  printf("1 = error\n");
  printf("Saisie error [0,1] ? = ");
  fflush( stdout );
  scanf("%d", resp_cu1_error);
}

void MailBox__mb_getCU2Error(bool *resp_cu2_error)
{
  printf("Error UC2\n");
  printf("0 = no error\n");
  printf("1 = error\n");
  printf("Saisie error [0,1] ? = ");
  fflush( stdout );
  scanf("%d", resp_cu2_error);
}

void MailBox__mb_set_on_state(CTX__ON_STATE state, int32_t cu)
{
    if(cu == 1)
    {
        MailBox__prev_cu1_on_state = MailBox__cu1_on_state;
        MailBox__cu1_on_state = state;
    }
    else
    {
        MailBox__prev_cu2_on_state = MailBox__cu2_on_state;
        MailBox__cu2_on_state = state;
    }
}

void MailBox__mb_set_running_state(CTX__RUNNING_STATE state, int32_t cu)
{
    if(cu == 1)
    {
        MailBox__prev_cu1_running_state = MailBox__cu1_running_state;
        MailBox__cu1_running_state = state;
    }
    else
    {
        MailBox__prev_cu2_running_state = MailBox__cu2_running_state;
        MailBox__cu2_running_state = state;
    }
}

void MailBox__mb_set_main_state(CTX__MAIN_STATE state, int32_t cu)
{
    if(cu == 1)
    {
        MailBox__prev_cu1_main_state = MailBox__cu1_main_state;
        MailBox__cu1_main_state = state;
    }
    else
    {
        MailBox__prev_cu2_main_state = MailBox__cu2_main_state;
        MailBox__cu2_main_state = state;
    }
}

