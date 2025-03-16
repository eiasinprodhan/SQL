--QUESTION NO.1
CREATE TABLE emp(
    eid NUMBER(10) CONSTRAINT emp_eid_pk PRIMARY KEY,
    ename VARCHAR2(30) NOT NULL,
    salary NUMBER(10) NOT NULL,
    hire_date DATE,
    address VARCHAR2(50)
);

--QUESTION NO.2
ALTER TABLE emp
    ADD(
    department_id NUMBER(10),
    dept_name VARCHAR2(20)
);

--QUESTION NO.3
INSERT INTO EMP VALUES(1,'Eiasin Prodhan',100000,'01-Jan-20','Munshiganj',85,'JEE');
INSERT INTO EMP VALUES(2,'Rakib Hasan',960000,'01-Jan-21','Dhaka',100,'JEE');
INSERT INTO EMP VALUES(3,'Parvej Hossain',60000,'01-Jan-22','Gulistan',50,'JEE');
INSERT INTO EMP VALUES(4,'Rahmatullah Khan',70000,'01-Jan-23','Shylet',805,'JEE');
INSERT INTO EMP VALUES(5,'Sadiar Rahman',90000,'01-Jan-24','India',850,'JEE');

--QUESTION NO.4
CREATE VIEW emp_view AS
SELECT first_name||' ' ||last_name AS ENAME, department_name, salary
FROM employees NATURAL JOIN departments
WHERE department_id = 80;

SELECT * FROM emp_view;

--QUESTION NO.5
CREATE SEQUENCE emp_eid_seq
        START WITH 1
        INCREMENT BY 1
        MAXVALUE 9999
        NOCACHE
        NOCYCLE;
        
SELECT emp_eid_seq.NEXTVAL
FROM DUAL;

--QUESTION NO.6
INSERT INTO EMP(eid,ename,salary,hire_date,address,department_id,dept_name)
SELECT employee_id,first_name||' '||last_name,salary,hire_date,country_name,department_id,department_name
FROM employees NATURAL JOIN departments NATURAL JOIN locations NATURAL JOIN countries
WHERE department_id = 100;

SELECT * FROM emp;
