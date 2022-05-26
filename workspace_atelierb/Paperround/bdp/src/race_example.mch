/* race_example
 * Author: yves
 * Creation date: 02/02/2022
 */
MACHINE
    race_example

EXTENDS race

CONCRETE_CONSTANTS
    Ferrari , Mercedes , Williams , McLaren , Lotus

PROPERTIES
    Ferrari : CAR & Mercedes : CAR & Williams : CAR &
    McLaren : CAR & Lotus : CAR &
    CAR = { Ferrari , Mercedes , Williams , McLaren , Lotus } & card ( CAR ) = 5

END
