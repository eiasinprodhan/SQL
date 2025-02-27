SELECT last_name
FROM employees
WHERE last_name LIKE '_an%';

SELECT last_name
FROM employees
WHERE SUBSTR(last_name,2, 2) = 'an';

SELECT last_name
FROM employees
WHERE SUBSTR(last_name,-1,1) = 'n';

SELECT last_name
FROM employees
WHERE SUBSTR(last_name,-3) = 'aan';