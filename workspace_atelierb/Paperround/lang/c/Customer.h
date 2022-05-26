#ifndef _Customer_h
#define _Customer_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define Customer__GOODS__max 10
/* Clause SETS */
typedef int Customer__GOODS;

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */

/* Clause CONCRETE_VARIABLES */

extern void Customer__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Customer__buy(Customer__GOODS gg, int32_t *pp);
extern void Customer__setprice(Customer__GOODS gg, int32_t pp);
extern void Customer__pricequery(Customer__GOODS gg, int32_t *pp);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Customer_h */
