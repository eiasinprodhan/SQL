SELECT EMPLOYEE_ID, FIRST_NAME ||' '|| LAST_NAME AS "Full Name", EMAIL, PHONE_NUMBER, SALARY, SALARY * 12 AS "YEARLY SALARY"  FROM employees;