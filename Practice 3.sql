SELECT e.first_name, d.department_name, l.city, c.country_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id;

SELECT * FROM countries;

INSERT INTO
countries (COUNTRY_ID,COUNTRY_NAME,REGION_ID) VALUES ('BN','Bangladesh',5);