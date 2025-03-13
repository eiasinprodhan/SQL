--Display the details of employees drawing the highest salary in the department.
SELECT first_name||' '||last_name AS "Full Name"
FROM employees
WHERE (department_id, salary) IN (SELECT department_id, MAX(salary)
                                    FROM employees
                                    GROUP BY department_id
                                    HAVING department_id IS NOT NULL);
--OR               
 SELECT DEPARTMENT_ID,FIRST_NAME, SALARY
 FROM EMPLOYEES e
 WHERE SALARY =(SELECT MAX(SALARY)
                FROM EMPLOYEES
                WHERE DEPARTMENT_ID = e.DEPARTMENT_ID);                                
                                    
--Display job id for jobs with average salary more than 10000.
SELECT *
FROM jobs
WHERE job_id IN (SELECT job_id
                FROM employees
                GROUP BY job_id
                HAVING AVG(salary)>10000);
                
--OR     
 SELECT JOB_ID, AVG(SALARY) FROM EMPLOYEES
 GROUP BY JOB_ID
 HAVING AVG(SALARY)>10000;         
                
                