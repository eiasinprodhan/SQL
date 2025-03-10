SELECT worker.last_name, manager.last_name
FROM employees worker JOIN employees manager
ON worker.manager_id = manager.employee_id;

SELECT last_name, manager_id,employee_id
FROM employees;