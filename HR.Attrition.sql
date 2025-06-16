-- 7. Attrition
SELECT COUNT(*) AS Attrition
FROM Employees
WHERE Exit_Date IS NOT NULL;

-- 7(i) %Attrition Rate
SELECT
CAST(SUM(CASE WHEN Exit_Date IS NOT NULL THEN 1 ELSE 0 END)*100 /COUNT(*) AS DECIMAL(6,0)) AS Attrition_Rate
FROM Employees;

--Attrition by Department and Job_Title
SELECT Department,Job_Title,COUNT(*) AS Attrition
FROM Employees
WHERE Exit_Date IS NOT NULL
GROUP BY Department,Job_Title
ORDER BY Department,Attrition DESC;

--Ex_Employees
SELECT EEID,Full_Name,Department,Job_Title,YEAR(Exit_Date)
FROM Employees
WHERE Exit_Date IS NOT NULL;

--Yearly Attrition
SELECT YEAR(Exit_Date),COUNT(*) AS Attrition
FROM Employees
WHERE Exit_Date IS NOT NULL
GROUP BY YEAR(Exit_Date) ;

--Attrition by Age Bracket
WITH Age_Group AS(
SELECT EEID,Full_Name,Job_Title,Department,Exit_Date,
		CASE	WHEN Age BETWEEN 25 AND 35 THEN 'Young'
				WHEN Age BETWEEN 35 AND 45 THEN 'Middle_Age'
				WHEN Age BETWEEN 45 AND 55 THEN 'Old'
				ELSE 'Aged'
		END AS Age_Bracket
FROM Employees
WHERE Exit_Date IS NOT NULL)
SELECT Age_Bracket,COUNT(*) AS Total_Employees 
FROM Age_Group
GROUP BY Age_Bracket
ORDER BY Total_Employees DESC;

--Attrition by Gender
SELECT Gender,COUNT(*) AS Attrition
FROM Employees
WHERE Exit_Date IS NOT NULL
GROUP BY Gender
ORDER BY Attrition DESC;
