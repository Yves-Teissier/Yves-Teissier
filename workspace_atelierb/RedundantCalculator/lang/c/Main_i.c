/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Main.h"

/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "MainControl.h"
#include "MainControl1.h"
#include "MailBox.h"
#include "IHM.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static CTX__MAIN_STATE Main__m_cu1_current_main_state;
static CTX__RUNNING_STATE Main__m_cu1_current_running_state;
static CTX__ON_STATE Main__m_cu1_current_on_state;
static CTX__MAIN_STATE Main__m_cu1_new_main_state;
static CTX__RUNNING_STATE Main__m_cu1_new_running_state;
static CTX__ON_STATE Main__m_cu1_new_on_state;
static CTX__MAIN_STATE Main__m_cu2_current_main_state;
static CTX__RUNNING_STATE Main__m_cu2_current_running_state;
static CTX__ON_STATE Main__m_cu2_current_on_state;
static CTX__MAIN_STATE Main__m_cu2_new_main_state;
static CTX__RUNNING_STATE Main__m_cu2_new_running_state;
static CTX__ON_STATE Main__m_cu2_new_on_state;
/* Clause INITIALISATION */
void Main__INITIALISATION(void)
{
    
    IHM__INITIALISATION();
    MailBox__INITIALISATION();
    MainControl__INITIALISATION();
    MainControl1__INITIALISATION();
    Main__m_cu1_current_main_state = CTX__OFF;
    Main__m_cu1_current_running_state = CTX__UNKNOWN;
    Main__m_cu1_current_on_state = CTX__ON_IDLE;
    Main__m_cu1_new_main_state = CTX__OFF;
    Main__m_cu1_new_running_state = CTX__UNKNOWN;
    Main__m_cu1_new_on_state = CTX__ON_IDLE;
    Main__m_cu2_current_main_state = CTX__OFF;
    Main__m_cu2_current_running_state = CTX__UNKNOWN;
    Main__m_cu2_current_on_state = CTX__ON_IDLE;
    Main__m_cu2_new_main_state = CTX__OFF;
    Main__m_cu2_new_running_state = CTX__UNKNOWN;
    Main__m_cu2_new_on_state = CTX__ON_IDLE;
}

/* Clause OPERATIONS */

void Main__run(void)
{
    MainControl1__cu1_run();
    MainControl__cu2_run();
    MailBox__mb_get_cu_running_state(1, 1, &Main__m_cu2_current_running_state);
    MailBox__mb_get_cu_running_state(1, 2, &Main__m_cu1_current_running_state);
    MailBox__mb_get_cu_main_state(1, 1, &Main__m_cu2_current_main_state);
    MailBox__mb_get_cu_main_state(1, 2, &Main__m_cu1_current_main_state);
    MailBox__mb_get_cu_on_state(1, 1, &Main__m_cu2_current_on_state);
    MailBox__mb_get_cu_on_state(1, 2, &Main__m_cu1_current_on_state);
    IHM__print_on_state(Main__m_cu1_current_on_state, 1);
    IHM__print_on_state(Main__m_cu2_current_on_state, 2);
    IHM__print_running_state(Main__m_cu1_current_running_state, 1);
    IHM__print_running_state(Main__m_cu2_current_running_state, 2);
    IHM__print_main_state(Main__m_cu1_current_main_state, 1);
    IHM__print_main_state(Main__m_cu2_current_main_state, 2);
}

