use dummydb;
select max(salary)
from employees
where salary < (select max(salary)
				from employees 
				);
                
select Departments.Department_name, avg(Employees.Salary) as Avg_salary
from Employees
inner join Departments on Employees.Department_id = Departments.Department_id
group by Departments.Department_name;

select first_name, Last_name, salary
from employees
where salary < (select min(salary)
				from employees
				where first_name  = 'steven');
                
select job_id, count(employee_id) as number_of_employees
from employees
group by job_id;

select department_name, employee_id
from departments left join employees on departments.Department_id = employees.department_id
where employee_id is null;

SELECT e1.First_name AS emp1, e2.First_name AS emp2, e1.Department_id
FROM Employees as e1
INNER JOIN Employees as e2 ON e1.Department_id = e2.Department_id
WHERE e1.First_name != e2.First_name;
