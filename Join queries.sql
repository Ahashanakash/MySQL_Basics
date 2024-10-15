use dummydb;

-- ---------joining table without join query-------------------
select first_name, department_name
from employees, departments
where employees.department_id = departments.department_id;
-- ------------------------------------------------------------

-- --------- joining table with join query --------------------

-- example - 1
select employees.first_name, departments.department_name
from employees
join departments on employees.department_id = departments.department_id;

-- example - 2
select m.first_name as employee, e.first_name as manager
from employees as e
join employees as m on e.employee_id = m.manager_id;
-- ------------------------------------------------------------


-- --------- joining table with Left join query --------------
-- Question: Show the department names with no employees-------
select departments.department_name, employees.employee_id
from departments
left join employees on departments.department_id = employees.department_id
where employees.department_id is null;