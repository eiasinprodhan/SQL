SELECT employee_id, first_name||' '||last_name AS "Full Name", job_id, department_id, salary
FROM employees
WHERE department_id = 60;