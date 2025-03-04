SELECT * FROM employees;

DESCRIBE employees;

SELECT EMPLOYEE_ID "Employee ID", first_name||' '||last_name AS "Full Name", email, phone_number, salary
FROM employees
WHERE EMPLOYEE_ID NOT IN(100, 105, 110, 115, 120, 125, 130, 135, 140, 145, 150);

SELECT EMPLOYEE_ID "Employee ID", first_name||' '||last_name AS "Full Name", email, phone_number, salary
FROM employees
WHERE first_name LIKE '%a_' OR first_name LIKE '_a%';

SELECT first_name, last_name 
FROM employees
WHERE SUBSTR(first_name,(LENGTH(first_name)-1), 2) = 'an';

SELECT first_name||' ' ||last_name, salary, 
CASE
WHEN salary >5000 THEN 'Low'
WHEN salary >10000 THEN 'Medium'
WHEN salary >15000 THEN 'High'
ELSE 'Excellent' END
FROM employees;

SELECT last_name, job_id,
DECODE(job_id, 'IT_PROG', 1.10*salary,
                'ST_CLERK', 1.15*salary,
                'AD_PRES', 1.20*salary,
                salary)
FROM employees;

SELECT job_id, AVG(salary)
FROM employees
GROUP BY job_id
FETCH FIRST 1 ROW ONLY;

SELECT 'Dear Customer ' || customer_name || ',' FROM customers;


