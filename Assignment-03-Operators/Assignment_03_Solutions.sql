--WAQTD details of the employees working as CLERK and earning less than 1500.
SELECT EMP.*
FROM EMP
WHERE JOB = 'CLERK' AND SAL < 1500;

--WAQTD name and Hire date of the employees working as MANAGER in DEPT 30.
SELECT ENAME, HIREDATE
FROM EMP
WHERE JOB ='MANAGER' AND DEPTNO = 30;

--WAQTD details of the employees along with annual salary if they are working in DEPT 30 as SALESMAN and their annual salary is greater than 14000.
SELECT ENAME,SAL*12 AS ANNUAL_SALARY
FROM EMP
WHERE JOB ='SALESMAN' AND SAL*12>14000;

--WAQTD all the details of the employees working in DEPT 30 or as ANALYST.
SELECT EMP.*
FROM EMP
WHERE DEPTNO = 30 OR JOB ='ANAYST';

--WAQTD names of the employees whose salary is less than 1100 and their designation is CLERK.
SELECT ENAME
FROM EMP 
WHERE SAL< 1100 AND JOB ='CLERK';

--WAQTD name, salary, annual salary, and department number if DEPTNO is 20, earning more than 1100 and annual salary exceeds 12000.
SELECT SAL, SAL*12 AS ANNUAL_SAL, DEPTNO
FROM EMP
WHERE SAL<1100 AND DEPTNO = 30 ;

--WAQTD EMPNO and names of the employees working as MANAGER in DEPT 30.
SELECT EMPNO, ENAME 
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO= 30;

--WAQTD details of the employees working in DEPT 20 OR 30.
SELECT EMP.*
FROM EMP
WHERE DEPTNO = 20 OR DEPTNO =30;

--WAQTD to display the details of employees working as ANALYST in DEPT 10.
SELECT EMP.*
FROM EMP
WHERE DEPTNO = 10 AND JOB ='ANAYST';

--WAQTD the details of employees working as PRESIDENT and earning a salary of 4000.
SELECT EMP.*
FROM EMP
WHERE JOB = 'PRESIDENT' AND SAL = 4000;

--WAQTD names, department number, and job of employees working as CLERK in DEPT 10 or DEPT 20.
SELECT ENAME, DEPTNO, JOB 
FROM EMP
WHERE JOB = 'CLERK' AND (DEPTNO = 10 OR DEPTNO = 20);

--WAQTD the details of employees in DEPT 10 working either as CLERK or MANAGER.
SELECT EMP.*
FROM EMP
WHERE DEPTNO = 10 AND (JOB = 'CLERK' OR JOB = 'MANAGER')

--WAQTD the names of employees working in DEPT 10, 20, 30, or 40.
SELECT ENAME
FROM EMP
WHERE DEPTNO IN (10, 20, 30, 40);

--WAQTD the details of the employees with EMPNO 7902 and 7839.
SELECT EMP.*
FROM EMP 
WHERE EMPNO IN (7902, 7839);

--WAQTD the names and job titles of employees working as MANAGER, CLERK, or SALESMAN.
SELECT ENAME, JOB
FROM EMP
WHERE JOB IN ('MANAGER','CLERK','SALESMAN');

--WAQTD the names of employees hired between 01-JAN-1981 and 31-DEC-1987.
SELECT ENAME 
FROM EMP 
WHERE HIREDATE BETWEEN '01-JAN-1981' AND '31-DEC-1987';

--WAQTD the details of employees whose salary is between 1250 and 3000.
SELECT EMP.*
FROM EMP
WHERE SAL BETWEEN 1250 AND 3000;

--WAQTD the names of employees hired after 01-JAN-1981 and working in DEPT 20 or 30.
SELECT ENAME
FROM EMP 
WHERE HIREDATE > '01-JAN-1981' AND DEPTNO IN (20,30);

--WAQTD names and annual salary of MANAGERs and CLERKs working in DEPT 10 or 30.
SELECT ENAME, SAL*12 AS "ANNUAL SALARY"
FROM EMP 
WHERE JOB IN ('MANAGER','CLERK') AND DEPTNO IN (10,30); 

--WAQTD details of employees whose salary is between 1000 and 4000 and annual salary exceeds 15000.
SELECT EMP.*
FROM EMP
WHERE SAL BETWEEN 1000 AND 4000 AND SAL * 12 > 15000;







