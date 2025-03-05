CREATE TABLE emp1287470(
eid NUMBER(10) CONSTRAINT eid_pk PRIMARY KEY,
ename VARCHAR2(30) NOT NULL,
salary NUMBER(10) NOT NULL,
hire_date DATE NOT NULL,
address VARCHAR2(30) NOT NULL);

DESCRIBE EMP1287470;

ALTER TABLE EMP1287470
ADD(department_id NUMBER(10), dept_name VARCHAR(30));

INSERT INTO EMP1287470 VALUES(1,'Eiasin Prodhan',100000,'01-Jan-20','Munshiganj',85,'JEE');
INSERT INTO EMP1287470 VALUES(2,'Rakib Hasan',960000,'01-Jan-21','Dhaka',100,'JEE');
INSERT INTO EMP1287470 VALUES(3,'Parvej Hossain',60000,'01-Jan-22','Gulistan',50,'JEE');
INSERT INTO EMP1287470 VALUES(4,'Rahmatullah Khan',70000,'01-Jan-23','Shylet',805,'JEE');
INSERT INTO EMP1287470 VALUES(5,'Sadiar Rahman',90000,'01-Jan-24','India',850,'JEE');

SELECT * FROM EMP1287470;




--Question No 1
CREATE TABLE emp1287470(
eid NUMBER(10) CONSTRAINT eid_pk PRIMARY KEY,
ename VARCHAR2(30) NOT NULL,
salary NUMBER(10) NOT NULL,
hire_date DATE NOT NULL,
address VARCHAR2(30) NOT NULL);

--Question No 2
SELECT department_id, ROUND(AVG(salary),2)
FROM employees
GROUP BY department_id
HAVING MAX(salary)>12000;

--Question No 3
SELECT first_name||' '||last_name AS "Full Name"
FROM employees
WHERE first_name LIKE 'S%';

--Question No 4
SELECT AVG(salary)
FROM employees
WHERE job_id LIKE '%SA%';

--Question No 5
SELECT first_name||' '||last_name AS "Full Name", hire_date
FROM employees
ORDER BY hire_date ASC;


