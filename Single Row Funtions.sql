SELECT LOWER(first_name), UPPER(last_name), INITCAP(job_id), CONCAT(first_name,CONCAT(' ', last_name)) AS "Full Name",
RPAD(salary,10,'*')
FROM employees;