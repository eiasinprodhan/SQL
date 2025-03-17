CREATE TABLE SADIAR(
id NUMBER,
name VARCHAR(30),
email VARCHAR(50)
);

DROP TABLE SADIAR;

ALTER TABLE SADIAR
ADD CONSTRAINT sa_id_pk PRIMARY KEY(id);

ALTER TABLE SADIAR
MODIFY name VARCHAR(100);

ALTER TABLE SADIAR
RENAME COLUMN name TO userName;

SELECT constraint_name, constraint_type
from user_constraints;

ALTER TABLE SADIAR
DROP CONSTRAINT sa_id_pk;

ALTER TABLE SADIAR
DROP PRIMARY KEY CASCADE;

ROLLBACK;

ALTER TABLE SADIAR
DROP COLUMN id;

INSERT INTO SADIAR VALUES(1,'Sadiar','sadiar@gmail.com');
INSERT INTO SADIAR VALUES(2,'Sadiar','sadiar@gmail.com');
INSERT INTO SADIAR VALUES(3,'Sadiar','sadiar@gmail.com');

SELECT * FROM SADIAR;
DESCRIBE SADIAR;


