MACHINE MovingParticle



CONCRETE_CONSTANTS nn , mn , mx
PROPERTIES
 nn = 2 & mn = 0 & mx = 10
ABSTRACT_VARIABLES pos , cont
INVARIANT
 pos : 1 .. nn --> ( mn .. mx ) &
 cont : ( mn .. mx ) --> NATURAL
INITIALISATION pos := { 1 |-> mn , 2 |-> mx } || cont := ( mn .. mx ) * { 0 } <+ { mn |-> 1 , mx |-> 1 }
OPERATIONS
  Move ( ii , mm ) = PRE ii : 1 .. nn & mm : { - 1 , 1 } THEN
     LET pm BE pm = pos ( ii ) + mm IN
       IF pm : mn .. mx THEN
          pos ( ii ) := pm ||
          cont ( pos ( ii ) ) := cont ( pos ( ii ) ) - 1 || /* accumulative assignment */
          cont ( pm ) := cont ( pm ) + 1 /* accumulative assignment */
      END
    END
  END
END
