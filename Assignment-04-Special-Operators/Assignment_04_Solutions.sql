--Assignment on Special Operators

--1. List all the employees whose commission is NULL.
SELECT *
FROM EMP 
WHERE COMM IS NULL;

--2. List all the employees who don’t have a reporting manager.
SELECT * 
FROM EMP 
WHERE MGR IS NULL;

--3. List all the salesmen in department 30.
SELECT *
FROM EMP
WHERE JOB ='SALESMAN' AND DEPTNO = 30;

--4. List all the salesmen in department number 30 and having salary greater than 1500.
SELECT *
FROM EMP 
WHERE DEPTNO = 30 AND SAL > 1500

--5. List all the employees whose name starts with ‘S’ or ‘A’.
SELECT * 
FROM EMP
WHERE ENAME LIKE 'S%' OR ENAME LIKE 'A%';

--6. List all the employees except those who are working in departments 10 and 20.
SELECT * 
FROM EMP 
WHERE DEPTNO NOT IN (10,20);

--7. List the employees whose name does not start with ‘S’.
SELECT *
FROM EMP 
WHERE ENAME NOT LIKE 'S%';

--8. List all the employees who are having reporting managers in department 10.
SELECT * 
FROM EMP
WHERE MGR IS NOT NULL AND DEPTNO = 10;

--9. List all the employees whose commission is NULL and who are working as clerks.
SELECT *
FROM EMP 
WHERE COMM IS NULL AND JOB = 'CLERK';

--10. List all the employees who don’t have a reporting manager in department 10 or 30.
SELECT *
FROM EMP
WHERE MGR IS NULL AND DEPTNO IN (10,30);

--11. List all the salesmen in department 30 with salary more than 2450.
SELECT * 
FROM EMP 
WHERE JOB = 'SALESMAN' AND DEPTNO = 30 AND SAL > 2450;

--12. List all the analysts in department number 20 and having salary greater than 2500.
SELECT * 
FROM EMP 
WHERE JOB = 'ANALYST' AND DEPTNO = 20 AND SAL > 2500;

13. List all the employees whose name starts with ‘M’ or ‘J’.
SELECT *
FROM EMP 
WHERE ENAME LIKE 'M%' OR ENAME LIKE 'J%';

14. List all the employees with annual salary except those who are working in department 30.
SELECT EMP.*, SAL*12 AS "ANNAUL SAL"
FROM EMP 
WHERE DEPTNO != 30;

--15. List the employees whose name does not end with ‘ES’ or ‘R’.
SELECT *
FROM EMP
WHERE ENAME NOT LIKE '%ES' OR ENAME NOT LIKE '%R';

--16. List all the employees who are having reporting managers in department 10 along with a 10% hike in salary.
SELECT EMP.*, SAL+SAL*0.1 HIKESAL
FROM EMP 
WHERE MGR IS NOT NULL AND DEPTNO = 10;

--17. Display all the employees who are salesmen having ‘E’ as the last but one character in ENAME and salary having exactly 4 characters.
SELECT *
FROM EMP
WHERE ENAME LIKE '%E' AND SAL LIKE '____';

--18. Display all the employees who are joined after the year 81.
SELECT *
FROM EMP
WHERE HIREDATE > '31-DEC-1981';

--19. Display all the employees who are joined in February.
SELECT *
FROM EMP 
WHERE HIREDATE LIKE '___FEB___'

--20. List the employees who are not working as managers and clerks in departments 10 and 20 with a salary in the range of 1000 to 3000.
SELECT *
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000 AND JOB NOT IN ('MANAGER','CLIENT') AND DEPTNO IN (10,20);
