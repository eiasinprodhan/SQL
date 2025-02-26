SELECT first_name, last_name, department_id
FROM employees
WHERE department_id BETWEEN 50 AND 100;

SELECT first_name, last_name, department_id
FROM employees
WHERE department_id IN(50, 60);

SELECT first_name, last_name, department_id
FROM employees
WHERE department_id NOT IN(50, 60, 70, 80);

SELECT first_name, last_name, department_id
FROM employees
WHERE first_name LIKE 'A_%' AND last_name LIKE '%a';

SELECT first_name, last_name, department_id, hire_date
FROM employees
WHERE hire_date > '17-JUN-03';

SELECT first_name, last_name, department_id, hire_date
FROM employees
WHERE hire_date BETWEEN '17-JUN-03' AND '03-MAR-05';

SELECT first_name, last_name, department_id, hire_date
FROM employees
WHERE department_id = 50 OR department_id = 60;

SELECT first_name, last_name, department_id
FROM employees
WHERE department_id = 50 AND first_name LIKE '%l_a';

SELECT first_name, last_name, department_id, commission_pct
FROM employees
WHERE commission_pct IS NULL;

SELECT first_name, last_name, department_id, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;

SELECT first_name, last_name, department_id
FROM employees
WHERE NOT department_id BETWEEN 50 AND 100;
