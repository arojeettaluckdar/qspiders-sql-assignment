--Write a query to display the number of employees working in each department except PRESIDENT.
SELECT JOB , COUNT(*)
FROM EMP 
WHERE JOB <> 'PRESIDENT'
GROUP BY JOB

--Write a query to find the total salary needed to pay all the employees in each job.
SELECT JOB, SUM(SAL) AS TOTAL_SAL
FROM EMP 
GROUP BY JOB

--Write a query to find the number of employees working as MANAGER in each department.
SELECT JOB, COUNT(*)
FROM EMP 
WHERE JOB = 'MANAGER'
GROUP BY JOB

--Write a query to find the average salary of employees in each department, excluding the employees of DEPTNO 20.
SELECT DEPTNO, AVG(SAL) AS AVG_SAL
FROM EMP
WHERE DEPTNO! = 20
GROUP BY DEPTNO

--Write a query to find the number of employees having character 'A' in their names in each job.
SELECT JOB, COUNT(*)
FROM EMP 
WHERE ENAME LIKE '%A%'
GROUP BY JOB

--Write a query to find the number of employees and average salary of those whose salary is greater than 2000, grouped by department.
SELECT DEPTNO, COUNT(*) AS Num_Employees, AVG(SAL) AS Avg_Salary
FROM EMP
WHERE SAL > 2000
GROUP BY DEPTNO;

--Write a query to find the total salary and number of SALESMEN in each department.
SELECT DEPTNO, COUNT(*) AS "ToTal", SUM(SAL) AS "TOTAL SALARY"
FROM EMP
WHERE JOB = 'SALESMAN'
GROUP BY DEPTNO

--Write a query to find the number of employees with their maximum salaries in each job.
SELECT JOB, MAX(SAL)
FROM EMP
GROUP BY JOB

--Write a query to find the maximum salary given to an employee working in each department.
SELECT DEPTNO , MAX(SAL)
FROM EMP
GROUP BY DEPTNO

--Write a query to count the number of times each salary value appears in the EMPLOYEE table
SELECT SAL, COUNT(*)
FROM EMP 
GROUP BY SAL

