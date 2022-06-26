/* WARNING if type checker is not performed, translation could contain errors ! */

#include "MainControl1.h"

/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "ControlUnit1.h"
#include "MailBox.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static CTX__MAIN_STATE MainControl1__cu1_current_main_state;
static CTX__RUNNING_STATE MainControl1__cu1_current_running_state;
static CTX__ON_STATE MainControl1__cu1_current_on_state;
static CTX__MAIN_STATE MainControl1__cu1_new_main_state;
static CTX__RUNNING_STATE MainControl1__cu1_new_running_state;
static CTX__ON_STATE MainControl1__cu1_new_on_state;
/* Clause INITIALISATION */
void MainControl1__INITIALISATION(void)
{
    
    ControlUnit1__INITIALISATION();
    MailBox__INITIALISATION();
    MainControl1__cu1_current_main_state = CTX__OFF;
    MainControl1__cu1_current_running_state = CTX__UNKNOWN;
    MainControl1__cu1_current_on_state = CTX__ON_IDLE;
    MainControl1__cu1_new_main_state = CTX__OFF;
    MainControl1__cu1_new_running_state = CTX__UNKNOWN;
    MainControl1__cu1_new_on_state = CTX__ON_IDLE;
}

/* Clause OPERATIONS */

void MainControl1__cu1_run(void)
{
    ControlUnit1__cu1_next_main_state(MainControl1__cu1_current_main_state, &MainControl1__cu1_new_main_state);
    MainControl1__cu1_current_main_state = MainControl1__cu1_new_main_state;
    if(MainControl1__cu1_new_main_state == CTX__ON)
    {
        ControlUnit1__cu1_next_on_state(MainControl1__cu1_current_on_state, &MainControl1__cu1_new_on_state);
        MainControl1__cu1_current_on_state = MainControl1__cu1_new_on_state;
    }
    if(MainControl1__cu1_new_on_state == CTX__RUNNING)
    {
        ControlUnit1__cu1_next_running_state(MainControl1__cu1_current_running_state, &MainControl1__cu1_new_running_state);
        MainControl1__cu1_current_running_state = MainControl1__cu1_new_running_state;
    }
}

