-- 1. Total Employees 
-- A. Total Employees by Department
SELECT Department,COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Department
ORDER BY Total_Employees DESC;

-- B. Total Employees by Business_unit
SELECT Business_Unit,COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Business_Unit
ORDER BY Total_Employees DESC;

-- C. Total Employees by Gender
SELECT Gender,COUNT(*) AS No_of_Employees
FROM Employees
GROUP BY Gender;

-- D. Total Employees by Ethnicity
SELECT Ethnicity,COUNT(*) AS No_of_Employees
FROM Employees
GROUP BY Ethnicity
ORDER BY No_of_Employees DESC ;

-- E. Total Employees by Country
SELECT Country,COUNT(*) AS No_of_Employees
FROM Employees
GROUP BY Country
ORDER BY No_of_Employees DESC ;
