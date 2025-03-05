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


