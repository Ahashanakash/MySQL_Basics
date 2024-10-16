USE dummydb;

-- --------------UNION Keyword -------------------------
SELECT *
FROM EMPLOYEES
WHERE salary >15000
UNION
SELECT *
FROM EMPLOYEES
WHERE department_id = 100;
-- -----------------------------------------------------

-- --------------UNION ALL Keyword ---------------------
SELECT *
FROM EMPLOYEES
WHERE salary >15000
UNION ALL
SELECT *
FROM EMPLOYEES
WHERE department_id = 100;
-- -----------------------------------------------------


-- --------------INTERSECT Keyword ---------------------
SELECT *
FROM EMPLOYEES
WHERE salary >10000
INTERSECT
SELECT *
FROM EMPLOYEES
WHERE department_id = 90;
-- -----------------------------------------------------


-- --------------MINUS Keyword -------------------------
SELECT Employees.employee_id, departments.Department_id
FROM EMPLOYEES
LEFT JOIN Departments 
ON Employees.Department_ID = Departments.Department_ID -- Used Left join as MINUS,  
WHERE DEPARTMENTS.Department_ID IS NULL;			   -- cause MySQL doesn't support the MINUS keyword
-- -----------------------------------------------------