create database office;
use office;

create table Employees(
	First_name varchar(50),
    Last_name varchar(50),
    Date_of_birth date not null,
    department_id varchar(50) primary key,
    salary int check (salary >10000)
);

insert into employees
(first_name, last_name, date_of_birth, department_id, salary)values 
('md','akib','2000-8-8','101', 50000),
('shah','poran','2001-9-10','102', 60000),
('abul','hasan','2002-10-15','103', 20000);


create table Departments(
	Department_id varchar(50) unique,
    Department_name varchar(50),
    foreign key (Department_id) references employees(department_id)
);
insert into departments
(department_id, department_name) values
('101', 'cse'),
('102', 'eee'),
('103', 'llb');

SET SQL_SAFE_UPDATES = 0;

UPDATE departments
SET department_name = 'civil' WHERE department_id = '103';
