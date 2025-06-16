-- 3. Total Department
-- A. Total Employees by Department and Age_Bracket 
WITH Age_Group AS(
SELECT EEID,Full_Name,Job_Title,Department,
		CASE	WHEN Age BETWEEN 25 AND 35 THEN 'Young'
				WHEN Age BETWEEN 35 AND 45 THEN 'Youth'
				WHEN Age BETWEEN 45 AND 55 THEN 'Middle_Age'
				ELSE 'Aged'
		END AS Age_Bracket
FROM Employees)
SELECT Department,Age_Bracket,COUNT(*) AS Total_Employees 
FROM Age_Group
GROUP BY Department,Age_Bracket
ORDER BY Department DESC,Total_Employees DESC;

-- B. Total Employees by Department and Gender
SELECT Department, Gender,COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Department,Gender
ORDER BY Department DESC,Total_Employees DESC;

-- C. Total Employees by Department and Ethnicity
SELECT Department, Ethnicity,COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Department,Ethnicity
ORDER BY Department DESC,Total_Employees DESC;

-- D. Total Employees by Department and Business_Unit
SELECT Department, Business_Unit,COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Department,Business_Unit
ORDER BY Department DESC,Total_Employees DESC;

-- D. Total Employees by Department and Job_Title
SELECT Department, COUNT(DISTINCT(Job_Title)) AS Job_Titles
FROM Employees
GROUP BY Department
ORDER BY Job_Titles DESC;

-- E. Total Employees by Department and Job_Title
SELECT Department, Job_Title,COUNT(*) AS Total_Employees
FROM Employees
GROUP BY Department,Job_Title
ORDER BY Department DESC,Total_Employees DESC;

-- F. Average Salary in Each Department
SELECT Department, AVG(Annual_Salary) AS Average_Annual_Salary
FROM Employees
GROUP BY Department
ORDER BY Average_Annual_Salary DESC;
