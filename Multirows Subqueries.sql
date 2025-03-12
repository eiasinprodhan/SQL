SELECT last_name,department_id, salary, job_id
FROM employees
WHERE salary < ANY (SELECT MIN(salary)
                    FROM employees
                    WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';

SELECT last_name,department_id, salary, job_id
FROM employees
WHERE salary < ALL (SELECT MIN(salary)
                    FROM employees
                    WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';

SELECT last_name
FROM employees
WHERE employee_id NOT IN(SELECT manager_id
FROM employees
WHERE manager_id IS NOT NULL);

SELECT last_name
FROM employees
WHERE employee_id IN(SELECT manager_id
FROM employees
WHERE manager_id IS NOT NULL);