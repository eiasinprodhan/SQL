SELECT last_name, salary, hire_date
FROM employees
WHERE hire_date>(SELECT hire_date
                FROM employees
                WHERE last_name = 'Chen')
AND salary>(SELECT salary
            FROM employees
            WHERE last_name = 'Chen')
ORDER BY 1 ASC;

SELECT employee_id, last_name,salary
FROM employees
WHERE salary > (SELECT AVG(salary)
                FROM employees)
ORDER BY 3;