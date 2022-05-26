/* sport_non_determinism
 * Author: yves
 * Creation date: 05/02/2022
 */
MACHINE sport_non_determinism

SETS
	NAME;
	STATUS = {tennis, croquet, squash, none}

VARIABLES members, tennis_p, croquet_p, squash_p

INVARIANT
	members <: NAME &
	tennis_p <: members &
	croquet_p <: members &
	squash_p <: members

INITIALISATION 
	members, tennis_p, croquet_p, squash_p := {}, {}, {}, {}

OPERATIONS

add_member(mm) = 
   PRE mm:NAME
   THEN members := members \/ {mm}
   END;

add_sport(mm, ss) =
   PRE mm:members & ss:STATUS
   THEN
      CASE ss OF
          EITHER tennis THEN tennis_p := tennis_p \/ {mm}  
          OR croquet THEN croquet_p := croquet_p \/ {mm}   
          OR squash THEN squash_p := squash_p \/ {mm}  
          ELSE skip
	  END
      END
   END;

rr <-- sports(mm) = 
   PRE mm:members
   THEN SELECT mm:tennis_p THEN rr := tennis
        WHEN mm:croquet_p THEN rr := croquet
        WHEN mm:squash_p THEN rr := squash
        ELSE rr := none
        END
   END

END
