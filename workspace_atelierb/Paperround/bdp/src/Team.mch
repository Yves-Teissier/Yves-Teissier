MACHINE           Team

SETS              ANSWER = { in , out }

ABSTRACT_VARIABLES team

INVARIANT         team <: 0 .. 21 & card ( team ) = 11

INITIALISATION    team := 0 .. 10

OPERATIONS

  substitute ( pp , rr ) =
  PRE pp : team & rr : 0 .. 21 & rr /: team
  THEN team := ( team \/ { rr } ) - { pp }
  END ;

aa <-- query ( pp ) =
  PRE pp : 0 .. 21
  THEN IF pp : team
       THEN aa := in
       ELSE aa := out
       END
  END

END
