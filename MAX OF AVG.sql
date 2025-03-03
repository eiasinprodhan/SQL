SELECT department_id, ROUND(AVG(salary),0)
FROM employees
GROUP BY department_id
ORDER BY 2 DESC
FETCH FIRST 1 ROW ONLY;