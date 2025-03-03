SELECT last_name, job_id, salary,
CASE job_id
WHEN 'IT_PROG' THEN 1.10*salary
WHEN 'ST_CLERK' THEN 1.15*salary
WHEN 'AD_PRES' THEN 1.20*salary
ELSE salary END "Revised Salary"
FROM employees;


SELECT last_name, salary,
CASE
WHEN salary<5000 THEN 'Low'
WHEN salary<10000 THEN 'Medium'
WHEN salary<20000 THEN 'Good'
ELSE 'Excelent' END "Revised Salary"
FROM employees;

SELECT last_name, job_id, salary,
DECODE( job_id, 'IT_PROG', 1.10*salary,
                'ST_CLERK', 1.15*salary,
                'AD_PRES', 1.20*salary,
                salary) "Revised Salary"
FROM employees;

