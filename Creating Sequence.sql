CREATE SEQUENCE mySequence
        START WITH 1
        INCREMENT BY 1
        MAXVALUE 99999
        NOCACHE
        NOCYCLE;

SELECT mySequence.CURRVAL
FROM DUAL;
        
DROP SEQUENCE mySequence;
    
SELECT *
FROM emp1287470
ORDER BY EID;
        
INSERT INTO emp1287470 VALUES(mySequence.NEXTVAL,'Rajaul Karim',19500,'12-NOV-22','Ajimpur',900,'NT');