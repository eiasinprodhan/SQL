CREATE TABLE emp1287470(
eid NUMBER(10) CONSTRAINT eid_pk PRIMARY KEY,
ename VARCHAR2(30) NOT NULL,
salary NUMBER(10) NOT NULL,
hire_date DATE NOT NULL,
address VARCHAR2(30) NOT NULL);

ALTER TABLE EMP1287470
ADD(department_id NUMBER(10), dept_name VARCHAR(30));

INSERT INTO EMP1287470 VALUES(1,'Eiasin Prodhan',100000,'01-Jan-20','Munshiganj',85,'JEE');
INSERT INTO EMP1287470 VALUES(2,'Rakib Hasan',960000,'01-Jan-21','Dhaka',100,'JEE');
INSERT INTO EMP1287470 VALUES(3,'Parvej Hossain',60000,'01-Jan-22','Gulistan',50,'JEE');
INSERT INTO EMP1287470 VALUES(4,'Rahmatullah Khan',70000,'01-Jan-23','Shylet',805,'JEE');
INSERT INTO EMP1287470 VALUES(5,'Sadiar Rahman',90000,'01-Jan-24','India',850,'JEE');

SELECT * FROM EMP1287470;


INSERT INTO EMP1287470 (eid,ename,salary,hire_date,address,department_id,dept_name)VALUES(6,'Arifur Rahman',90000,'01-Jan-24','India',850,'JEE');

COMMIT;

INSERT INTO EMP1287470 (eid,ename,salary,hire_date,address,department_id,dept_name)
SELECT employee_id,first_name||' '||last_name,salary,hire_date,country_name,department_id,department_name
FROM employees NATURAL JOIN departments NATURAL JOIN locations NATURAL JOIN countries
WHERE department_id = 100;

ROLLBACK;

DROP TABLE EMP1287470;

UPDATE EMP1287470
SET ename = 'Abdur Rahim'
WHERE eid=5;