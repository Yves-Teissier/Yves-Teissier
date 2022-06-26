/* WARNING if type checker is not performed, translation could contain errors ! */

#include "MainControl.h"

/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "ControlUnit2.h"
#include "MailBox.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static CTX__MAIN_STATE MainControl__cu2_current_main_state;
static CTX__RUNNING_STATE MainControl__cu2_current_running_state;
static CTX__ON_STATE MainControl__cu2_current_on_state;
static CTX__MAIN_STATE MainControl__cu2_new_main_state;
static CTX__RUNNING_STATE MainControl__cu2_new_running_state;
static CTX__ON_STATE MainControl__cu2_new_on_state;
/* Clause INITIALISATION */
void MainControl__INITIALISATION(void)
{
    
    ControlUnit2__INITIALISATION();
    MailBox__INITIALISATION();
    MainControl__cu2_current_main_state = CTX__OFF;
    MainControl__cu2_current_running_state = CTX__UNKNOWN;
    MainControl__cu2_current_on_state = CTX__ON_IDLE;
    MainControl__cu2_new_main_state = CTX__OFF;
    MainControl__cu2_new_running_state = CTX__UNKNOWN;
    MainControl__cu2_new_on_state = CTX__ON_IDLE;
}

/* Clause OPERATIONS */

void MainControl__cu2_run(void)
{
    ControlUnit2__cu2_next_main_state(MainControl__cu2_current_main_state, &MainControl__cu2_new_main_state);
    MainControl__cu2_current_main_state = MainControl__cu2_new_main_state;
    if(MainControl__cu2_new_main_state == CTX__ON)
    {
        ControlUnit2__cu2_next_on_state(MainControl__cu2_current_on_state, &MainControl__cu2_new_on_state);
        MainControl__cu2_current_on_state = MainControl__cu2_new_on_state;
    }
    if(MainControl__cu2_new_on_state == CTX__RUNNING)
    {
        ControlUnit2__cu2_next_running_state(MainControl__cu2_current_running_state, &MainControl__cu2_new_running_state);
        MainControl__cu2_current_running_state = MainControl__cu2_new_running_state;
    }
}

