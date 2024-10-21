

CREATE TABLE customers(
customer_id INT PRIMARY KEY,
customer_name varchar(20)
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id int,
order_date date,
foreign key (customer_id) references customers(customer_id)
);

insert into customers values(101,'customer_1');
insert into customers values(102,'customer_2');
insert into customers values(103,'customer_3');
insert into customers values(104,'customer_4');
insert into customers values(105,'customer_5');
select *from customers;

insert into orders values(201,101,'2024-10-17');
insert into orders values(202,102,'2024-10-16');
insert into orders values(203,103,'2024-10-12');
insert into orders values(204,104,'2024-10-19');
insert into orders values(205,105,'2024-10-10');
select *from orders

--innerJoin
select orders.order_id, orders.customer_id,customers.customer_name,orders.order_date
from orders
inner join customers
on orders.customer_id=customers.customer_id
order by order_id;

/*
--without using join keyword - same result
select orders.order_id,orders.customer_id,customers.customer_name,orders.order_date
from orders,customers
where orders.customer_id=customers.customer_id
order by order_id;
*/

select orders.order_id, orders.customer_id,customers.customer_name,orders.order_date
from orders
right join customers
on orders.customer_id = customers.customer_id
order by order_id;

select orders.order_date,customers.customer_id
from customers
left join orders on customers.customer_id=orders.customer_id
order by orders.order_date;



