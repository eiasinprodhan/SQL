--QUESTION NO.1 ANSWER:
CREATE TABLE emp1287470(
        eid NUMBER(10) CONSTRAINT emp_eid_pk PRIMARY KEY,
        ename VARCHAR2(30) NOT NULL,
        salary NUMBER(20),
        hire_date DATE,
        address VARCHAR2(50)
);




--QUESTION NO.2 ANSWER:
ALTER TABLE emp1287470
    ADD(
    department_id NUMBER(10),
    dept_name VARCHAR2(30)
);



--QUESTION NO.3 ANSWER:
INSERT INTO emp1287470(eid,ename,salary,hire_date,address,department_id,dept_name)
                VALUES(&eid,'&ename',&salary,'&hire_date','&address',&department_id,'&dept_name');

INSERT INTO emp1287470(eid,ename,salary,hire_date,address,department_id,dept_name)
                VALUES(&eid,'&ename',&salary,'&hire_date','&address',&department_id,'&dept_name');



--QUESTION NO.4 ANSWER:
CREATE VIEW emp1287470_view AS
SELECT ename, dept_name, salary
FROM emp1287470
WHERE department_id = 80;



--QUESTION NO.5 ANSWER:
INSERT INTO emp1287470(eid,ename,salary,hire_date,address,department_id,dept_name)
SELECT employee_id,first_name||' '||last_name,salary,hire_date,country_name,department_id,department_name
FROM employees NATURAL JOIN departments NATURAL JOIN locations NATURAL JOIN countries
WHERE department_id IN (SELECT department_id
                        FROM employees
                        WHERE department_id = 100);


--QUESTION NO.6 ANSWER:
CREATE SEQUENCE emp1287470_eid_seq
        START WITH 1
        INCREMENT BY 1
        MAXVALUE 9999
        NOCACHE
        NOCYCLE;
--Example 
INSERT INTO emp1287470 VALUES(emp1287470_eid_seq.NEXTVAL,'Jony',90000,'01-Mar-24','India',90,'JEE');
INSERT INTO emp1287470 VALUES(emp1287470_eid_seq.NEXTVAL,'Rony',50000,'01-Jan-24','Bangladesh',100,'JEE');
INSERT INTO emp1287470 VALUES(emp1287470_eid_seq.NEXTVAL,'Alvi',100000,'01-Apr-24','Pakistan',40,'JEE');


