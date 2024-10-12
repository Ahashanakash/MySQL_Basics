-- --------- Which employees take less salary than employee ID 144?---------
USE dummydb;

SELECT employee_id, salary
FROM employees
WHERE salary< (SELECT salary
				FROM employees
				WHERE employee_id=144);
-- -------------------------------------------------------------------------



-- ---------Who takes the maximum salary -----------------------------------
SELECT *
FROM employees
WHERE salary = (SELECT MAX(salary)
				FROM employees);
-- -------------------------------------------------------------------------



-- --------Who works at Marketing department--------------------------------
SELECT *
FROM employees
WHERE department_id = (SELECT department_id
					   FROM departments
					   WHERE department_name = 'marketing');
-- -------------------------------------------------------------------------



-- -------- Avg salary of marketing department -----------------------------
SELECT AVG(salary)
FROM employees
WHERE department_id = (SELECT department_id
						FROM departments
						WHERE department_name = 'marketing');
-- -------------------------------------------------------------------------



-- --------How many employees are in IT department--------------------------
SELECT COUNT(*) AS Members
FROM employees
WHERE department_id = (SELECT department_id
					 FROM departments
					 WHERE department_name = 'IT');
-- -------------------------------------------------------------------------



-- -------How much money costs for programmer-------------------------------
SELECT SUM(salary) total_cost
FROM employees
WHERE job_ID = (SELECT job_id
					 FROM jobs
					 WHERE job_title = 'programmer');
-- -------------------------------------------------------------------------