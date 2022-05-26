/* httpServer
 * Author: yves
 * Creation date: 22/05/2022
 */
MACHINE
    httpServer

OPERATIONS
    handleRequest =
    BEGIN
        skip
    END;
    
    debutRequest <-- httpServer_get_debut_request =
    BEGIN
        debutRequest :: NAT
    END
    
END
