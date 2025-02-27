SELECT first_name, last_name, department_id, hire_date
FROM employees
WHERE department_id = 60 OR department_id = 80
ORDER BY department_id DESC, first_name ASC;