--QUESTION NO.1 ANS:
CREATE TABLE emp(
    eid NUMBER(10) CONSTRAINT emp_eid_pk PRIMARY KEY,
    ename VARCHAR2(30) NOT NULL,
    salary NUMBER(10) NOT NULL,
    hire_date DATE,
    address VARCHAR2(50)
);



--QUESTION NO.2 ANS:
ALTER TABLE emp
    ADD(
    department_id NUMBER(10),
    dept_name VARCHAR2(20)
);



--QUESTION NO.3 ANS:
INSERT INTO EMP VALUES(1,'Eiasin Prodhan',100000,'01-Jan-20','Munshiganj',100,'JEE');
INSERT INTO EMP VALUES(2,'Rakib Hasan',960000,'01-Jan-21','Dhaka',80,'JEE');
INSERT INTO EMP VALUES(3,'Parvej Hossain',60000,'01-Jan-22','Gulistan',50,'JEE');
INSERT INTO EMP VALUES(4,'Rahmatullah Khan',70000,'01-Jan-23','Shylet',80,'JEE');
INSERT INTO EMP VALUES(5,'Sadiar Rahman',90000,'01-Jan-24','India',40,'JEE');



--QUESTION NO.4 ANS:
CREATE VIEW emp_view AS
SELECT ename, dept_name, salary
FROM emp
WHERE department_id = 80;

--RESULT OF MY CREATED VIEW:
SELECT * FROM emp_view;



--QUESTION NO.5 ANS:
CREATE SEQUENCE emp_eid_seq
        START WITH 1
        INCREMENT BY 1
        MAXVALUE 9999
        NOCACHE
        NOCYCLE;
        
--NEXT VALUE OF MY CREATED SEQUENCE   
SELECT emp_eid_seq.NEXTVAL
FROM DUAL;



--QUESTION NO.6 ANS:
INSERT INTO EMP(eid,ename,salary,hire_date,address,department_id,dept_name)
SELECT employee_id,first_name||' '||last_name,salary,hire_date,country_name,department_id,department_name
FROM employees NATURAL JOIN departments NATURAL JOIN locations NATURAL JOIN countries
WHERE department_id = 100;

--FINAL RESULT
SELECT * FROM emp;