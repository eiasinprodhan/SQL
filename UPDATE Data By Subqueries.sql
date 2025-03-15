UPDATE employees
SET (job_id, salary)= (SELECT job_id, salary
                        FROM employees
                        WHERE employee_id = 205)
WHERE employee_id = 103;

SELECT *
FROM employees
WHERE employee_id IN(103,205);

ROLLBACK;