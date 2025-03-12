--Display details of departments in which the maximum salary is more than 10000
SELECT department_id
FROM employees
WHERE department_id IN (SELECT department_id
                        FROM employees
                        GROUP BY department_id
                        HAVING MAX(salary)>10000)
GROUP BY department_id
ORDER BY 1;

--OR

SELECT * FROM DEPARTMENTS WHERE DEPARTMENT_ID IN
 ( SELECT DEPARTMENT_ID FROM EMPLOYEES
 GROUP BY DEPARTMENT_ID
 HAVING MAX(SALARY)>10000);


--Display details of departments managed by ‘Smith’.
SELECT department_id
FROM employees
WHERE manager_id IN (SELECT employee_id
                        FROM employees
                        WHERE last_name = 'Smith');
--OR

SELECT * FROM DEPARTMENTS WHERE MANAGER_ID IN
 (SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE FIRST_NAME='SMITH');
 
 
 

--Display employees who did not do any job in the past. 
SELECT employee_id, first_name||' '||last_name AS "Full Name"
FROM employees
WHERE employee_id NOT IN (SELECT employee_id
                            FROM job_history);