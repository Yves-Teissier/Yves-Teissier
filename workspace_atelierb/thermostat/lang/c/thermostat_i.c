/* WARNING if type checker is not performed, translation could contain errors ! */

#include "thermostat.h"

/* Clause SEES */
#include "CTX.h"

/* Clause IMPORTS */
#include "target.h"
#include "temperature.h"
#include "chaudiere.h"
#include "timer.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static int32_t thermostat__target_val;
static int32_t thermostat__temperature_val;
static int32_t thermostat__gaz_duration;
static int32_t thermostat__check_temperature_delay;
static int32_t thermostat__delta;
/* Clause INITIALISATION */
void thermostat__INITIALISATION(void)
{
    
    chaudiere__INITIALISATION();
    target__INITIALISATION();
    temperature__INITIALISATION();
    timer__INITIALISATION();
    thermostat__target_val = 1800;
    thermostat__temperature_val = 0;
    thermostat__gaz_duration = 90;
    thermostat__check_temperature_delay = 350;
    thermostat__delta = 0;
}

/* Clause OPERATIONS */

void thermostat__thermostat_set_context(void)
{
    ;
}

void thermostat__thermostat_next(CTX__STATE state, CTX__STATE *new_state)
{
    if(state == CTX__SETGAZ_STATE)
    {
        chaudiere__start_chaudiere();
        timer__timer_wait(thermostat__gaz_duration);
        chaudiere__stop_chaudiere();
        (*new_state) = CTX__IDLE_STATE;
    }
    else if(state == CTX__IDLE_STATE)
    {
        target__target_get_target(&thermostat__target_val);
        temperature__temperature_get_temperature(&thermostat__temperature_val);
        if((thermostat__target_val) > (2500))
        {
            thermostat__target_val = 2500;
        }
        thermostat__delta = thermostat__target_val-thermostat__temperature_val;
        if(((thermostat__delta) >= (50)))
        {
            thermostat__gaz_duration = 120;
            thermostat__check_temperature_delay = 300;
        }
        else
        {
            thermostat__gaz_duration = 90;
            thermostat__check_temperature_delay = 350;
        }
        timer__timer_wait(thermostat__check_temperature_delay);
        if((thermostat__temperature_val) < (thermostat__target_val))
        {
            (*new_state) = CTX__SETGAZ_STATE;
        }
        else
        {
            (*new_state) = CTX__IDLE_STATE;
        }
    }
    else
    {
        (*new_state) = CTX__IDLE_STATE;
    }
}

