--Display details of manager who manages more than 5 employees.
SELECT *
FROM employees
WHERE employee_id IN (SELECT manager_id
                        FROM employees
                        GROUP BY manager_id
                        HAVING COUNT(manager_id)>5);                   
--OR
SELECT FIRST_NAME FROM EMPLOYEES
 WHERE EMPLOYEE_ID IN
 (SELECT MANAGER_ID FROM EMPLOYEES
 GROUP BY MANAGER_ID
 HAVING COUNT(*)>5);



--Display the departments into which no employee joined in last two years
SELECT *
FROM departments
WHERE department_id NOT IN (SELECT department_id
                        FROM employees
                        WHERE TO_CHAR(SYSDATE,'YYYY') - TO_CHAR(hire_date,'YYYY') < 2);                   
--OR
 SELECT  * FROM DEPARTMENTS
 WHERE DEPARTMENT_ID NOT IN
 ( SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE
 FLOOR((SYSDATE-HIRE_DATE)/365) < 2 );
    
    
       
--Display details of current job for employees who worked as IT Programmers in the past.         
SELECT *
FROM employees
WHERE employee_id IN (SELECT employee_id
                        FROM job_history
                        WHERE job_id = 'IT_PROG');          
--OR
SELECT * FROM JOBS
 WHERE JOB_ID IN
 (SELECT JOB_ID FROM EMPLOYEES WHERE EMPLOYEE_ID IN
        (SELECT EMPLOYEE_ID FROM JOB_HISTORY WHERE JOB_ID='IT_PROG'));
        
SELECT * FROM job_history;