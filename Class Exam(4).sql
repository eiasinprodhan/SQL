SELECT last_name
FROM employees
WHERE last_name LIKE '_an%';

SELECT last_name
FROM employees
WHERE SUBSTR(last_name,2, 2) = 'an';

SELECT last_name
FROM employees
WHERE SUBSTR(last_name,-1,1) = 'n';

SELECT last_name
FROM employees
WHERE SUBSTR(last_name,-3) = 'aan';

SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;


SELECT last_name, department_id
FROM employees
WHERE department_id = 20 OR department_id = 50
ORDER BY last_name ASC;

SELECT last_name, salary
FROM employees
WHERE (department_id = 20 OR department_id = 50) AND (salary BETWEEN 5000 AND 12000)
ORDER BY last_name ASC;

SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;

SELECT last_name, salary, CONCAT(commission_pct*100,'%')
FROM employees
WHERE commission_pct*100 = 20
ORDER BY salary DESC;


SELECT employee_id, last_name, salary, (salary*0.155)+salary AS "New Salary"
FROM employees;
