use Dummy1;

create table employees(empNo int primary key,name varchar(20),department varchar(20));

insert into employees(empNo,name,department) values
(101,'pradeesh','design'),
(102,'arun','developer'),
(103,'alsa','trainer'),
(104, 'dishad','design');

select * FROM employees

--list the no. of employees in each department 
select department, count(*)

from employees
group by department;