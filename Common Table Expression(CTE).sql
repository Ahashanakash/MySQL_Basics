use dummydb;

WITH avgsalary AS (
	SELECT AVG(salary) AS avgsal
    FROM employees
    WHERE department_id = 60 -- IT
),
maxsalary AS (
	SELECT MAX(salary) AS maxsal
    FROM employees
    WHERE department_id = 20 -- Marketing
)

SELECT *
FROM employees
WHERE salary > (SELECT avgsal FROM avgsalary) AND salary < (SELECT maxsal FROM maxsalary);