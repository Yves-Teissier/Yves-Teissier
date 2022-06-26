/* WARNING if type checker is not performed, translation could contain errors ! */

#include "ControlUnit2.h"

/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "MailBox.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

#define ControlUnit2__CU2_IS_FIRST_SLAVE false
/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static int32_t ControlUnit2__current_u;
static bool ControlUnit2__cu2_error;
static CTX__MAIN_STATE ControlUnit2__cu1_main_state;
static CTX__MAIN_STATE ControlUnit2__prev_main_state;
static CTX__MAIN_STATE ControlUnit2__prev_cu1_main_state;
static bool ControlUnit2__IS_FIRST_ELECTION;
static bool ControlUnit2__IS_MASTER_BEFORE;
static bool ControlUnit2__IS_ERROR_BEFORE;
static bool ControlUnit2__IS_ERROR_RECEIVED_BEFORE;
static bool ControlUnit2__IS_MASTER;
/* Clause INITIALISATION */
void ControlUnit2__INITIALISATION(void)
{
    
    MailBox__INITIALISATION();
    ControlUnit2__current_u = 0;
    ControlUnit2__cu2_error = false;
    ControlUnit2__cu1_main_state = CTX__OFF;
    ControlUnit2__prev_cu1_main_state = CTX__OFF;
    ControlUnit2__prev_main_state = CTX__OFF;
    ControlUnit2__IS_FIRST_ELECTION = true;
    ControlUnit2__IS_MASTER_BEFORE = false;
    ControlUnit2__IS_ERROR_BEFORE = false;
    ControlUnit2__IS_ERROR_RECEIVED_BEFORE = false;
    ControlUnit2__IS_MASTER = false;
}

/* Clause OPERATIONS */

void ControlUnit2__cu2_next_main_state(CTX__MAIN_STATE state, CTX__MAIN_STATE *next_main_state)
{
    MailBox__mb_get_cu_main_state(0, 1, &ControlUnit2__prev_cu1_main_state);
    if(ControlUnit2__prev_cu1_main_state == CTX__ERROR)
    {
        ControlUnit2__IS_ERROR_RECEIVED_BEFORE = true;
    }
    if(state == CTX__ERROR)
    {
        ControlUnit2__IS_ERROR_BEFORE = true;
    }
    else
    {
        ControlUnit2__IS_ERROR_BEFORE = false;
    }
    if(state == CTX__ERROR)
    {
        MailBox__mb_set_main_state(CTX__ERROR, 2);
    }
    else if(state == CTX__SHUTDOWN)
    {
        MailBox__mb_set_main_state(ControlUnit2__prev_main_state, 2);
    }
    MailBox__mb_getCU2Error(&ControlUnit2__cu2_error);
    if(ControlUnit2__cu2_error == true)
    {
        (*next_main_state) = CTX__ERROR;
        MailBox__mb_set_main_state(CTX__ERROR, 2);
    }
    else
    {
        MailBox__mb_getCurrentU(&ControlUnit2__current_u);
        if((ControlUnit2__current_u) > (32))
        {
            (*next_main_state) = CTX__ON;
        }
        else if(((ControlUnit2__current_u) > (32)) &&
        ((ControlUnit2__current_u) < (34)))
        {
            (*next_main_state) = CTX__ON;
        }
        else if(((ControlUnit2__current_u) < (30)) ||
        ((ControlUnit2__current_u) > (35)))
        {
            (*next_main_state) = CTX__SHUTDOWN;
        }
        else if((ControlUnit2__current_u) < (32))
        {
            (*next_main_state) = CTX__OFF;
        }
        MailBox__mb_set_main_state(*next_main_state, 2);
    }
}

void ControlUnit2__cu2_next_on_state(CTX__ON_STATE state, CTX__ON_STATE *next_on_state)
{
    MailBox__mb_getCurrentU(&ControlUnit2__current_u);
    if(((ControlUnit2__current_u) > (32)) &&
    ((ControlUnit2__current_u) < (34)))
    {
        (*next_on_state) = CTX__RUNNING;
    }
    if(state == CTX__INITIALIZING)
    {
        MailBox__mb_set_on_state(CTX__INITIALIZING, 2);
    }
}

void ControlUnit2__cu2_next_running_state(CTX__RUNNING_STATE state, CTX__RUNNING_STATE *next_running_state)
{
    if(state == CTX__MASTER)
    {
        ControlUnit2__IS_MASTER_BEFORE = true;
    }
    else
    {
        ControlUnit2__IS_MASTER_BEFORE = false;
    }
    if(state == CTX__SLAVE)
    {
        MailBox__mb_set_running_state(CTX__SLAVE, 2);
    }
    else if(state == CTX__MASTER)
    {
        MailBox__mb_set_running_state(CTX__MASTER, 2);
    }
    if((ControlUnit2__CU2_IS_FIRST_SLAVE == true) &&
    (ControlUnit2__IS_FIRST_ELECTION == true))
    {
        (*next_running_state) = CTX__SLAVE;
        MailBox__mb_set_running_state(CTX__SLAVE, 2);
    }
    if((ControlUnit2__IS_MASTER_BEFORE == true) &&
    (ControlUnit2__IS_ERROR_RECEIVED_BEFORE == false))
    {
        (*next_running_state) = CTX__SLAVE;
        MailBox__mb_set_running_state(CTX__SLAVE, 2);
    }
    if((ControlUnit2__CU2_IS_FIRST_SLAVE == false) &&
    (ControlUnit2__IS_FIRST_ELECTION == true))
    {
        (*next_running_state) = CTX__MASTER;
        MailBox__mb_set_running_state(CTX__MASTER, 2);
    }
    if((ControlUnit2__IS_MASTER_BEFORE == false) &&
    (ControlUnit2__IS_ERROR_BEFORE == false))
    {
        (*next_running_state) = CTX__MASTER;
        MailBox__mb_set_running_state(CTX__MASTER, 2);
    }
    if((ControlUnit2__IS_MASTER_BEFORE == true) &&
    (ControlUnit2__IS_ERROR_RECEIVED_BEFORE == true))
    {
        (*next_running_state) = CTX__MASTER;
        MailBox__mb_set_running_state(CTX__MASTER, 2);
    }
    MailBox__mb_get_cu_main_state(1, 1, &ControlUnit2__cu1_main_state);
    if(ControlUnit2__cu1_main_state == CTX__ERROR)
    {
        (*next_running_state) = CTX__MASTER;
        MailBox__mb_set_running_state(CTX__MASTER, 2);
    }
    if((*next_running_state) == CTX__UNKNOWN)
    {
        MailBox__mb_set_running_state(CTX__UNKNOWN, 2);
    }
}

