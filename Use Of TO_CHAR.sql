SELECT last_name, salary, CONCAT('BDT', TO_CHAR(salary*40,'99,99,999.00')) Salary
FROM employees;

SELECT last_name, salary,
    CONCAT('BDT',
        SUBSTR(TO_CHAR(salary*40,'$99,99,999.00'),
            INSTR(TO_CHAR(salary*40,'$99,99,999.00'),'$')+1)) "New Salary"
                FROM employees;