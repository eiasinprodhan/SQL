--Question No 1
SELECT INITCAP(last_name), LENGTH(last_name)
FROM employees
WHERE SUBSTR(last_name,1,1) = 'J' OR SUBSTR(last_name,1,1) = 'A' OR SUBSTR(last_name,1,1) = 'M'
ORDER BY last_name;

--Question No 2
SELECT last_name, LPAD(salary,15,'$') AS SALARY
FROM employees;

--Question No 3
SELECT CONCAT(last_name,CONCAT(' earns ',CONCAT(salary,CONCAT(' monthly but wants ',salary*3)))) AS "Dream Salaries"
FROM employees;

--Question No 4
SELECT last_name, hire_date, salary, TO_CHAR(NEXT_DAY(hire_date+180,'MONDAY'),'fmDAY "the" ddspth "of" MONTH YYYY') REVIEW
FROM employees;


