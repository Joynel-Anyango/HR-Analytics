-- 2 Annual Salary
-- A. Total Annual Salary by Department
SELECT Department,SUM( Annual_Salary) AS Annual_Salary
FROM Employees
GROUP BY Department
ORDER BY Annual_Salary DESC ;

-- B. Total Annual Salary by Business_Unit
SELECT Business_Unit,SUM( Annual_Salary) AS Annual_Salary
FROM Employees
GROUP BY Business_Unit
ORDER BY Annual_Salary DESC;

-- C. Total Annual Salary by Gender
SELECT Gender,SUM( Annual_Salary) AS Annual_Salary
FROM Employees
GROUP BY Gender
ORDER BY Annual_Salary DESC;

-- D. Average Annual Salary by Job_Title in Each Department
SELECT Job_Title,Department,SUM (Annual_Salary) AS Annual_Salary
FROM Employees
GROUP BY Department,Job_Title
ORDER BY Annual_Salary DESC;

-- E. Average Annual Salary 
SELECT AVG(Annual_Salary) AS Average_Annual_Salary
FROM Employees;

-- F. High Paid Employees(Employees Paid Above Average Annual Salary)
SELECT Full_Name,Job_Title,Department,Annual_Salary
FROM Employees
WHERE Annual_Salary > (SELECT AVG(Annual_Salary) AS Average_Annual_Salary
FROM Employees);

-- G. Low Paid Employees(Employees Paid Below Average Annual Salary)
SELECT Full_Name,Job_Title,Department,Annual_Salary
FROM Employees
WHERE Annual_Salary < (SELECT AVG(Annual_Salary) AS Average_Annual_Salary
FROM Employees);

