--Creating Database Hr
CREATE DATABASE Hr ;
--Using Hr Database 
USE Hr ;
--Importing table Employees
--Viewing the Employees Table
SELECT * FROM Employees ;

-- A. KPI's
-- 1. Total Employees 
SELECT COUNT(*) AS Total_Employees
FROM Employees ;

-- 2. Total Annual Salary
SELECT SUM(Annual_Salary) AS Total_Salary
FROM Employees;

-- 3. Average Annual Salary
SELECT AVG(Annual_Salary) AS Average_Annual_Salary
FROM Employees;

-- 4. Total Departments
SELECT COUNT(DISTINCT(Department)) AS No_of_Departments
FROM Employees;

-- 5. Total Job Titles
SELECT COUNT(DISTINCT(Job_Title)) AS Job_Titles
FROM Employees;

-- 6. Active Employees
SELECT COUNT(*) AS Active_Employees
FROM Employees
WHERE Exit_Date IS NULL;

-- 6(i) % Active Employees
SELECT 
    CAST(SUM(CASE WHEN Exit_Date IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5,0)) AS ActiveEmployeePercentage
FROM 
    employees;


-- 7. Attrition
SELECT COUNT(*) AS Job_Titles
FROM Employees
WHERE Exit_Date IS NOT NULL;

-- 7(i) %Attrition Rate
SELECT
CAST(SUM(CASE WHEN Exit_Date IS NOT NULL THEN 1 ELSE 0 END)*100 /COUNT(*) AS DECIMAL(6,0)) AS Attrition_Rate
FROM Employees;

