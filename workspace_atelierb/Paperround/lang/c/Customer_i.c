/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Customer.h"

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static int32_t Customer__limit[Customer__GOODS__max+1];
static int32_t Customer__price_i[11];
static bool Customer__purchases_i[11];
/* Clause INITIALISATION */
void Customer__INITIALISATION(void)
{
    
    unsigned int i = 0;
    for(i = 0; i <= 10;i++)
    {
        Customer__limit[i] = 10;
    }
    for(i = 0; i <= 10;i++)
    {
        Customer__price_i[i] = 1;
    }
    for(i = 0; i <= 10;i++)
    {
        Customer__purchases_i[i] = false;
    }
}

/* Clause OPERATIONS */

void Customer__buy(Customer__GOODS gg, int32_t *pp)
{
    (*pp) = Customer__price_i[gg];
    {
        int32_t tmp;
        
        tmp = Customer__limit[gg];
        if(((*pp)) <= (tmp))
        {
            Customer__purchases_i[gg] = true;
        }
    }
}

void Customer__setprice(Customer__GOODS gg, int32_t pp)
{
    Customer__price_i[gg] = pp;
}

void Customer__pricequery(Customer__GOODS gg, int32_t *pp)
{
    (*pp) = Customer__price_i[gg];
}

