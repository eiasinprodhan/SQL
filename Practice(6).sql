--QUESTION 1
SELECT *
FROM employees
WHERE employee_id IN (SELECT manager_id
                        FROM employees
                        HAVING COUNT(manager_id)>5
                        GROUP BY manager_id);

--QUESTION 2
SELECT *
FROM departments
WHERE department_id IN (SELECT department_id
                        FROM employees
                        WHERE TO_CHAR(SYSDATE,'YYYY') - TO_CHAR(hire_date,'YYYY') > 2);
                        
--QUESTION 3                                
SELECT *
FROM employees
WHERE employee_id IN (SELECT employee_id
                        FROM job_history
                        WHERE job_id = 'IT_PROG');