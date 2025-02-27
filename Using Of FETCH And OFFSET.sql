SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
FETCH NEXT 5 ROWS ONLY;

SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;

--Row Limiting Clause