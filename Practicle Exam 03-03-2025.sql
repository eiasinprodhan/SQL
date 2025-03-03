--QUESTION NO 1
SELECT first_name, hire_date
FROM employees
WHERE TO_CHAR(hire_date,'fmYYYY') BETWEEN '2002' AND '2005';

--QUESTION NO 2
SELECT first_name, hire_date
FROM employees
WHERE job_id IN ('IT_PROG','SA_MAN');

--QUESTION NO 3
SELECT first_name ||' ' || last_name AS "Full Name", TO_CHAR(hire_date,'fmDD-MONTH-YYYY')
FROM employees
WHERE TO_CHAR(hire_date,'fmDD') >= '01'
AND TO_CHAR(hire_date,'fmMONTH') >= 'JANUARY'
AND TO_CHAR(hire_date,'fmYYYY') >= '2008';

--QUESTION NO 4
SELECT *
FROM employees
WHERE employee_id IN (150,160);

--QUESTION NO 5
SELECT first_name, salary, commission_pct, hire_date
FROM employees
WHERE salary<10000;