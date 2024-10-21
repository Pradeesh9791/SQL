
Create table studclusterindex
( Roll_No int primary key, 
Name varchar(50), 
Gender varchar(30), 
Mob_No bigint );

alter TABLE studclusterindex ALTER COLUMN Mob_No BIGINT;
SELECT * FROM studclusterindex;

insert into studclusterindex
values (4, 'ankita', 'female', 9876543210 );

insert into studclusterindex 
values (3, 'anita', 'female', 9675432890 );

insert into studclusterindex 
values (5, 'mahima', 'female', 8976453201 ); 

insert into studclusterindex 
values (6, 'mahi', 'male', 8976453345 ); 

insert into studclusterindex 
values (7, 'ani', 'male', 8976453345 );

select Roll_No,Name,Mob_No from studclusterindex where Gender='male';

CREATE INDEX ind_st on studclusterindex(Mob_No);


CREATE INDEX ind_name_Mob ON studclusterindex(Name,Mob_No);

DROP INDEX studclusterindex.ind_st;

