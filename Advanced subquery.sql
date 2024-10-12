use dummydb;

-- --------- show all informaions of the second highest salary taker ---------

-- method 1 

select *
from employees
where salary = (select distinct (salary)
				from employees
				order by salary desc
				limit 1,1);

-- method 2 (optimized)

select *
from employees
where salary = (select max(salary)
			   from employees
			   where salary < (select max(salary)
							  from employees)
				);
-- --------------------------------------------------------------------------



-- ----------- which employees gets more salary then their mananger -----------------------------------------------
select *
from employees as emp
where salary > (select salary
				from employees as mgr
				where mgr.employee_id = emp.manager_id
                );


select * 
from employees
where salary > (select salary
				from employees
				where employee_id = manager_id);