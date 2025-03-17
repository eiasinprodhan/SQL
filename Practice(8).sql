CREATE SEQUENCE mySequence
        START WITH 1
        INCREMENT BY 1
        MAXVALUE 9999
        NOCYCLE
        NOCACHE;   
        
SELECT * FROM emp;

INSERT INTO emp(eid,ename,salary,hire_date,address,department_id,dept_name)
SELECT mySequence.NEXTVAL, first_name||' '||last_name, salary, hire_date, city||','||country_name, department_id, department_name
FROM employees NATURAL JOIN departments NATURAL JOIN locations NATURAL JOIN countries
WHERE department_id = 100;

ROLLBACK;