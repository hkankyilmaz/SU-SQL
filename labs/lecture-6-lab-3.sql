--1

SELECT DEPARTMENT_ID 
FROM HR.DEPARTMENTS 
MINUS
SELECT DEPARTMENT_ID 
FROM HR.EMPLOYEES 
WHERE EMPLOYEES.JOB_ID ='ST_CLERK';

--2

SELECT country_id,country_name
FROM HR.countries
MINUS
SELECT l.country_id,c.country_name
FROM hr.locations l JOIN hr.countries c
ON (l.country_id = c.country_id)
JOIN hr.departments d
ON d.location_id=l.location_id;

--3


SELECT D.DEPARTMENT_ID ,JH.JOB_ID 
FROM HR.DEPARTMENTS d JOIN HR.JOB_HISTORY jh 
ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID 
WHERE D.DEPARTMENT_ID = 10
UNION ALL
SELECT D.DEPARTMENT_ID ,JH.JOB_ID  
FROM HR.DEPARTMENTS d JOIN HR.JOB_HISTORY jh 
ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID 
WHERE D.DEPARTMENT_ID = 20
UNION ALL
SELECT D.DEPARTMENT_ID ,JH.JOB_ID 
FROM HR.DEPARTMENTS d JOIN HR.JOB_HISTORY jh 
ON D.DEPARTMENT_ID = JH.DEPARTMENT_ID 
WHERE D.DEPARTMENT_ID = 50

SELECT distinct job_id, department_id
FROM HR.employees
WHERE department_id = 10
UNION ALL
SELECT DISTINCT job_id, department_id
FROM HR.employees
WHERE department_id = 50
UNION ALL
SELECT DISTINCT job_id, department_id
FROM HR.employees
WHERE department_id = 20

--4

SELECT EMPLOYEE_ID ,JOB_ID 
FROM HR.EMPLOYEES e 
INTERSECT
SELECT EMPLOYEE_ID ,JOB_ID 
FROM HR.JOB_HISTORY jh 

--5

SELECT last_name,department_id,TO_CHAR(null)
FROM HR.employees
UNION
SELECT TO_CHAR(null),department_id,department_name
FROM HR.departments;







