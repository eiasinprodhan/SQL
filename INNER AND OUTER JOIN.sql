SELECT w.last_name emp, m.last_name mgr
 FROM   employees w JOIN employees m
 ON 
   (w.manager_id = m.employee_id);
   
   
select e.last_name, e.Manager_id 
from employees e
join departments d on d.department_id= e.manager_id;


select * from job_grades;



CREATE TABLE job_grades (
grade 		CHAR(1),
lowest_sal 	NUMBER(8,2) NOT NULL,
highest_sal	NUMBER(8,2) NOT NULL
);

ALTER TABLE job_grades
ADD CONSTRAINT jobgrades_grade_pk PRIMARY KEY (grade);

INSERT INTO job_grades VALUES ('A', 1000, 2999);
INSERT INTO job_grades VALUES ('B', 3000, 5999);
INSERT INTO job_grades VALUES ('C', 6000, 9999);
INSERT INTO job_grades VALUES ('D', 10000, 14999);
INSERT INTO job_grades VALUES ('E', 15000, 24999);
INSERT INTO job_grades VALUES ('F', 25000, 40000);

COMMIT;


SELECT e.last_name, e.salary, j.grade
 FROM   employees e JOIN job_grades j
 ON 
    e.salary 
BETWEEN j.lowest_sal AND j.highest_sal;


SELECT e.last_name, e.department_id, d.department_name
 FROM   employees e LEFT OUTER JOIN departments d
 ON   (e.department_id = d.department_id) ;
 
 
 
 
 SELECT e.last_name, d.department_id, d.department_name
 FROM   employees e RIGHT OUTER JOIN departments d
 ON    (e.department_id = d.department_id) ;
 
 
 
 SELECT e.last_name, d.department_id, d.department_name
 FROM   employees e FULL OUTER JOIN departments d
 ON   (e.department_id = d.department_id) ;
 
 select * from employees;
 
 
 
 
 
 
 
 
 SELECT last_name, department_name
 FROM   employees
 CROSS JOIN departments ;
 
 
 
 



   
   
   