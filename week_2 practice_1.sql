use dummydb;

--  -------------------Q1---------------------------------
select *
from employees
where salary = (select distinct(salary)
				from employees 
				order by salary desc
				limit 2,1);
                
                
-- -----------------Q2------------------------------------
select *
from employees
where salary = (select distinct(salary)
				from employees 
				order by salary asc
				limit 2,1);


-- ------------------Q3-----------------------------------
select *
from employees
where hire_date > (select hire_date
				   from employees
			       where first_name = 'steven' and last_name = 'Markle'
				   );
-- -------------------------------------------------------


-- -----------------Q4 -----------------------------------
WITH th AS (
select distinct(salary) as trdh
				from employees 
				order by salary desc
				limit 2,1
),
tl AS (
select distinct(salary) as trdl
				from employees 
				order by salary asc
				limit 2,1
)
select *
from employees
where salary = (select trdh from th);

select *
from employees
where salary = (select trdl from tl);
-- -------------------------------------------------------