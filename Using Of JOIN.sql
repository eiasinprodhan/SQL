SELECT employee_id, first_name||' '||last_name, job_id, job_title, max_salary, min_salary
FROM employees NATURAL JOIN jobs;

SELECT first_name||' '||last_name AS "Full Name", salary, department_name, max_salary, job_title, city, country_name
FROM employees
NATURAL JOIN departments
NATURAL JOIN jobs
NATURAL JOIN countries
NATURAL JOIN locations
WHERE country_name LIKE 'United States of America'
ORDER BY 1 ASC
OFFSET 5 ROWS FETCH NEXT 5 ROWS ONLY;

SELECT first_name||' '||last_name AS "Full Name", salary, department_name
FROM employees JOIN departments
USING (department_id);

SELECT e.first_name||' '||e.last_name AS "Full Name", e.salary, d.department_name
FROM employees e JOIN departments d
ON e.department_id = d.department_id;

SELECT e.first_name||' '||e.last_name AS "Full Name", e.salary, d.department_name, l.city, c.country_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id;

