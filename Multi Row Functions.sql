SELECT job_id, ROUND(AVG(salary),0), MAX(salary), MIN(salary), SUM(salary), COUNT(salary)
FROM employees
WHERE job_id LIKE '%REP%'
GROUP BY job_id
ORDER BY job_id;

SELECT department_id, MAX(salary)
FROM employees
GROUP BY department_id
HAVING MAX(salary)>10000
ORDER BY 2 ASC;

SELECT job_id, SUM(salary)
FROM employees
WHERE job_id NOT LIKE '%REP%'
GROUP BY job_id
HAVING SUM(salary)>13000
ORDER BY job_id;

SELECT MAX(AVG(salary))
FROM employees
GROUP BY department_id;
