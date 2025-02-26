SELECT * FROM employees;

DESCRIBE employees;

SELECT EMPLOYEE_ID "Employee ID", first_name||' '||last_name AS "Full Name", email, phone_number, salary
FROM employees
WHERE EMPLOYEE_ID NOT IN(100, 105, 110, 115, 120, 125, 130, 135, 140, 145, 150);

SELECT EMPLOYEE_ID "Employee ID", first_name||' '||last_name AS "Full Name", email, phone_number, salary
FROM employees
WHERE first_name LIKE '%a_' OR first_name LIKE '_a%';