/* access_example
 * Author: yves
 * Creation date: 05/02/2022
 */
MACHINE
    access_example

EXTENDS
    access

CONCRETE_CONSTANTS
    brother , hp , lexmak , rectoverso , couleur , ppp100

PROPERTIES
    brother : PRINTER & hp : PRINTER & lexmak : PRINTER &
    rectoverso : OPTION & couleur : OPTION & ppp100 : OPTION &
    PRINTER = { brother , hp , lexmak } & card ( PRINTER ) = 2 &
    OPTION = { rectoverso , couleur , ppp100 } & card ( OPTION ) = 3
END
