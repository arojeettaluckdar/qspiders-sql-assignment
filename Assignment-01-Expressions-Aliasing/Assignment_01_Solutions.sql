-- Assignment 01: Expressions & Alias
-- Author: Arojeet Talukdar
-- Date: 26-May-2025

-- Question 1: Display employee name and annual salary
SELECT ename, sal * 12 AS "Annual Salary"
FROM emp;

-- Question 2: Display employee name, job, and half-term salary (6 months)
SELECT ename, job, sal * 6 AS "Half-Term Salary"
FROM emp;

-- Question 3: All employee details with an annual bonus of 2000
SELECT emp.*, sal * 12 + 2000 AS "Annual Salary + Bonus" FROM emp;

-- Question 4: Name and salary with 10% hike
SELECT ename, sal * 1.10 AS "Salary with 10% Hike"
FROM emp;

-- Question 5: Name and salary with 25% deduction
SELECT ename, sal * 0.75 AS "Salary with 25% Deduction"
FROM emp;

-- Question 6: Name and monthly salary after a hike of 50
SELECT ename, sal + 50 AS "Monthly Salary with ₹50 Hike"
FROM emp;

-- Question 7: Name and annual salary with 10% deduction
SELECT ename, (sal * 12) - ((sal * 12) * 0.10) AS "Deducted Salary"
FROM emp;

-- Question 8: Total salary given to each employee (sal + comm)
SELECT ename, sal + comm AS "Total Salary"
FROM emp;

-- Question 9: All employee details with annual salary
SELECT emp.*, sal * 12 AS "Annual Salary"
FROM emp;

-- Question 10: Name and designation with ₹100 penalty in salary
SELECT ename, job, sal - 100 AS "Salary after ₹100 Penalty"
FROM emp;
