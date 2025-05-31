-- 1. WAQTD number of employees getting salary less than 2000 in Deptno 10
SELECT *
FROM EMP 
WHERE SAL < 2000 AND DEPTNO = 10;

-- 2. WAQTD total salary needed to pay employees working as Clerk
SELECT SUM(SAL)
FROM EMP 
WHERE JOB = 'CLERK'

-- 3. WAQTD average salary needed to pay all employees
SELECT AVG(SAL)
FROM EMP 

-- 4. WAQTD number of employees having 'A' as their first character
SELECT COUNT(*) AS total_employees_with_A
FROM EMP
WHERE ENAME LIKE 'A%';

-- 5. WAQTD number of employees working as Clerk or Manager
SELECT COUNT(*) AS "NUM"
FROM EMP 
WHERE JOB = 'MANAGER' OR JOB = 'CLERK';

-- 6. WAQTD total salary needed to pay employees hired in Feb
SELECT SUM(SAL) AS total_feb_salary
FROM EMP
WHERE HIREDATE LIKE '%FEB%';

-- 7. WAQTD number of employees reporting to 7839 (Mgr)
SELECT COUNT(*)
FROM EMP
WHERE MGR = 7839;

-- 8. WAQTD number of employees getting commission in Deptno 30
SELECT COUNT(*)
FROM EMP
WHERE COMM IS NOT NULL AND DEPTNO = 30;

-- 9. WAQTD avg salary, total salary, number of employees and maximum salary given to employees working as President
SELECT 
    AVG(SAL) AS avg_salary,
    SUM(SAL) AS total_salary,
    COUNT(*) AS "No. of emp.",
    MAX(SAL) AS max_salary
FROM EMP
WHERE JOB = 'PRESIDENT';

-- 10. WAQTD number of employees having 'A' in their names
SELECT COUNT(*)
FROM EMP 
WHERE ENAME LIKE '%A%';

-- 11. WAQTD number of employees and total salary needed to pay the employees who have 2 consecutive L's in their names
SELECT 
 COUNT (*) AS "total_emp",
 SUM(SAL)
FROM EMP
WHERE ENAME LIKE'%LL%';

-- 12. WAQTD number of departments present in employee table
SELECT COUNT(DISTINCT DEPTNO)
FROM EMP;

-- 13. WAQTD number of employees having character 'Z' in their names
SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE '%Z%';

-- 14. WAQTD number of employees having 'S' in their names
SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE '%S%';

-- 15. WAQTD total salary given to employees working as Clerk in Dept 30
SELECT SUM(SAL)
FROM EMP 
WHERE JOB = 'CLERK' AND DEPTNO = 30;

-- 16. WAQTD maximum salary given to the employees working as Analyst
SELECT MAX(SAL) 
FROM EMP
WHERE JOB = 'ANALYST';

-- 17. WAQTD number of distinct salaries present in employee table
SELECT COUNT(DISTINCT SAL)
FROM EMP;

-- 18. WAQTD number of jobs present in employee table
SELECT COUNT(DISTINCT JOB)
FROM EMP 

-- 19. WAQTD avg salary given to the Clerk
SELECT AVG(SAL)
FROM EMP
WHERE JOB = 'CLERK'

-- 20. WAQTD minimum salary given to the employees who work in Dept 10 as Manager or a Clerk
SELECT MIN(SAL)
FROM EMP 
WHERE DEPTNO = 10 AND JOB IN ('MANAGER', 'CLERK');