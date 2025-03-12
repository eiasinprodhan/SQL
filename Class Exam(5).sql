SELECT employee_id, last_name
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM employees
                        WHERE last_name LIKE '%u%');
                        
SELECT last_name, department_id, job_id
FROM employees
WHERE department_id in (SELECT department_id
                        FROM departments
                        WHERE location_id = 1700);
                        


SELECT last_name, salary
FROM employees
WHERE manager_id IN (SELECT employee_id
                    FROM employees
                    WHERE last_name = 'King');
                    
SELECT last_name, salary
FROM employees
WHERE manager_id = (SELECT manager_id
                    FROM departments
                    WHERE manager_id IN 
                    (SELECT employee_id
                    FROM employees
                    WHERE last_name = 'King'));
                    
