
create table student (Sno int,name varchar(20),age int);

insert into student values(101,'pradeesh',23);

select * from student

insert into student values (102,'arun',23);
insert into student values (103,'SivaSr',25);

insert into student values (104,'asla',23);

select * from student
update student set name='sivasir' where Sno = 103;

update student set name='topper' where name ='arun';

select*from student

select * from student order by age asc;

DELETE from student where name='topper';

select *from student

alter table student add marks int;

select * from student

delete from student;
select * from student;

alter table student add salery int;
select * from student

insert into student values (102,'arun',23,450,20000);
insert into student values (103,'SivaSr',25,490,25000);
insert into student values (104,'asla',23,440,30000);
insert into student values (105,'pradeesh',23,400,22000);


--delete duplicate row
DELETE FROM student
WHERE Sno IN (
SELECT Max(Sno)
FROM student
GROUP BY Sno,name, age, marks, salery
having count(*)>1);

select * from student

where name like 'a%';

--second highest salery
select max(salery) as secondHighestSalery from student where salery <> (select max(salery) from student);

USE master;
ALTER DATABASE Dummy1 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
ALTER DATABASE Dummy1 MODIFY NAME = new_database_name;
ALTER DATABASE new_database_name MODIFY NAME = Training_database;


