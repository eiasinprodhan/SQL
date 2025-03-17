CREATE USER demo
IDENTIFIED BY demo;

GRAND create session, create table, create sequence, create view
TO demo;

CREATE ROLE manager;

GRAND create table, create view
TO manager;

GRANT manager To alice;

ALTER USER demo
IDENTIFIED BY employee;

GRANT select
ON employees
TO demo;

GRANT update(department_name, location_id)
ON employees
TO demo, manager;

GRANT select, insert
ON employees
TO demo
WITH GRANT OPTION;

REVOKE select, insert
ON employees
TO demo;