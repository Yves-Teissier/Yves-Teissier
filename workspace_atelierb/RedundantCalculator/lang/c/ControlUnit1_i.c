/* WARNING if type checker is not performed, translation could contain errors ! */

#include "ControlUnit1.h"

/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "MailBox.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

#define ControlUnit1__CU1_IS_FIRST_SLAVE true
/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static int32_t ControlUnit1__current_u;
static bool ControlUnit1__cu1_error;
static CTX__MAIN_STATE ControlUnit1__cu1_main_state;
static CTX__MAIN_STATE ControlUnit1__cu2_main_state;
static CTX__MAIN_STATE ControlUnit1__prev_cu1_main_state;
static CTX__MAIN_STATE ControlUnit1__prev_cu2_main_state;
static CTX__MAIN_STATE ControlUnit1__prev_main_state;
static bool ControlUnit1__IS_FIRST_ELECTION;
static bool ControlUnit1__IS_MASTER_BEFORE;
static bool ControlUnit1__IS_ERROR_BEFORE;
static bool ControlUnit1__IS_ERROR_RECEIVED_BEFORE;
static bool ControlUnit1__IS_MASTER;
/* Clause INITIALISATION */
void ControlUnit1__INITIALISATION(void)
{
    
    MailBox__INITIALISATION();
    ControlUnit1__current_u = 0;
    ControlUnit1__cu1_error = false;
    ControlUnit1__cu1_main_state = CTX__OFF;
    ControlUnit1__cu2_main_state = CTX__OFF;
    ControlUnit1__prev_cu1_main_state = CTX__OFF;
    ControlUnit1__prev_cu2_main_state = CTX__OFF;
    ControlUnit1__prev_main_state = CTX__OFF;
    ControlUnit1__IS_FIRST_ELECTION = true;
    ControlUnit1__IS_MASTER_BEFORE = false;
    ControlUnit1__IS_ERROR_BEFORE = false;
    ControlUnit1__IS_ERROR_RECEIVED_BEFORE = false;
    ControlUnit1__IS_MASTER = false;
}

/* Clause OPERATIONS */

void ControlUnit1__cu1_next_main_state(CTX__MAIN_STATE state, CTX__MAIN_STATE *next_main_state)
{
    MailBox__mb_get_cu_main_state(0, 2, &ControlUnit1__prev_cu2_main_state);
    if(ControlUnit1__prev_cu2_main_state == CTX__ERROR)
    {
        ControlUnit1__IS_ERROR_RECEIVED_BEFORE = true;
    }
    else
    {
        ControlUnit1__IS_ERROR_RECEIVED_BEFORE = false;
    }
    MailBox__mb_get_cu_main_state(0, 1, &ControlUnit1__prev_cu1_main_state);
    if(ControlUnit1__prev_cu1_main_state == CTX__ERROR)
    {
        ControlUnit1__IS_ERROR_BEFORE = true;
    }
    else
    {
        ControlUnit1__IS_ERROR_BEFORE = false;
    }
    if(state == CTX__ERROR)
    {
        MailBox__mb_set_main_state(CTX__ERROR, 1);
    }
    else if(state == CTX__SHUTDOWN)
    {
        MailBox__mb_set_main_state(ControlUnit1__prev_main_state, 1);
    }
    MailBox__mb_getCU1Error(&ControlUnit1__cu1_error);
    if(ControlUnit1__cu1_error == true)
    {
        (*next_main_state) = CTX__ERROR;
        MailBox__mb_set_main_state(CTX__ERROR, 1);
    }
    else
    {
        MailBox__mb_getCurrentU(&ControlUnit1__current_u);
        if((ControlUnit1__current_u) > (32))
        {
            (*next_main_state) = CTX__ON;
        }
        else if(((ControlUnit1__current_u) > (32)) &&
        ((ControlUnit1__current_u) < (34)))
        {
            (*next_main_state) = CTX__ON;
        }
        else if(((ControlUnit1__current_u) < (30)) ||
        ((ControlUnit1__current_u) > (35)))
        {
            (*next_main_state) = CTX__SHUTDOWN;
        }
        else if((ControlUnit1__current_u) < (32))
        {
            (*next_main_state) = CTX__OFF;
        }
        MailBox__mb_set_main_state(*next_main_state, 1);
    }
    ControlUnit1__cu1_main_state = (*next_main_state);
}

void ControlUnit1__cu1_next_on_state(CTX__ON_STATE state, CTX__ON_STATE *next_on_state)
{
    MailBox__mb_getCurrentU(&ControlUnit1__current_u);
    if(((ControlUnit1__current_u) > (32)) &&
    ((ControlUnit1__current_u) < (34)))
    {
        (*next_on_state) = CTX__RUNNING;
    }
    if(state == CTX__INITIALIZING)
    {
        MailBox__mb_set_on_state(CTX__INITIALIZING, 1);
    }
}

void ControlUnit1__cu1_next_running_state(CTX__RUNNING_STATE state, CTX__RUNNING_STATE *next_running_state)
{
    if(state == CTX__MASTER)
    {
        ControlUnit1__IS_MASTER_BEFORE = true;
    }
    else
    {
        ControlUnit1__IS_MASTER_BEFORE = false;
    }
    if(state == CTX__SLAVE)
    {
        MailBox__mb_set_running_state(CTX__SLAVE, 1);
    }
    else if(state == CTX__MASTER)
    {
        MailBox__mb_set_running_state(CTX__MASTER, 1);
    }
    if((ControlUnit1__CU1_IS_FIRST_SLAVE == true) &&
    (ControlUnit1__IS_FIRST_ELECTION == true))
    {
        (*next_running_state) = CTX__SLAVE;
        MailBox__mb_set_running_state(CTX__SLAVE, 1);
    }
    if((ControlUnit1__CU1_IS_FIRST_SLAVE == false) &&
    (ControlUnit1__IS_FIRST_ELECTION == true))
    {
        (*next_running_state) = CTX__MASTER;
        MailBox__mb_set_running_state(CTX__MASTER, 1);
    }
    if((ControlUnit1__IS_MASTER_BEFORE == true) &&
    (ControlUnit1__IS_ERROR_BEFORE == true))
    {
        (*next_running_state) = CTX__SLAVE;
        MailBox__mb_set_running_state(CTX__SLAVE, 1);
    }
    if((ControlUnit1__IS_MASTER_BEFORE == false) &&
    (ControlUnit1__IS_ERROR_RECEIVED_BEFORE == true))
    {
        (*next_running_state) = CTX__MASTER;
        MailBox__mb_set_running_state(CTX__MASTER, 1);
    }
    if((*next_running_state) == CTX__UNKNOWN)
    {
        MailBox__mb_set_running_state(CTX__UNKNOWN, 1);
    }
    ControlUnit1__IS_FIRST_ELECTION = false;
}

