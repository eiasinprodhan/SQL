--Question No 1
SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;


--Question No 2
SELECT last_name, department_id
FROM employees
WHERE department_id = 20 OR department_id = 50
ORDER BY last_name ASC;


--Question No 3
SELECT last_name, salary
FROM employees
WHERE department_id in(20,50) AND salary BETWEEN 5000 AND 12000
ORDER BY last_name ASC;


--Question No 4
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL
ORDER BY salary DESC, commission_pct DESC;


--Question No 5
SELECT last_name, salary, CONCAT(commission_pct*100,'%')
FROM employees
WHERE commission_pct*100 = 20
ORDER BY salary DESC;


--Question No 6
SELECT employee_id, last_name, salary, ROUND((salary*0.155)+salary) AS "New Salary"
FROM employees;
