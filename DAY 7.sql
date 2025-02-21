-- join 
-- it is used o join one or more table 




create database test1;
use test1;
create table 
product(pid int,name varchar(32),price int);
insert into product values (10 , 'tv',100),(20 ,"apple",200),(30,'mobile',300),
(40,'shoe',1500);
create table orders(oid varchar(20), city varchar(20),
product_id int);
insert into orders values('A1012','Jaipur',10),
('B21012','Goa',20), ('C3012','Japan',30),('D4012','uK',60);
select * from product;
select * from orders;


select pid ,name,price,city from product join orders;
-- cross join is join two tables in which we dont defiine
-- the condition so every row matchs all rows present in second table 
-- and the formula is m*n where m= number of rows in first table 
-- n = number of rows in seccond table 


select pid ,name,price,city from product join orders where pid = product_id;




select p.pid ,p.name,p.price,o.city from product as p 
join orders as o where p.pid = o.product_id;

-- inner join we can use on keyword in it 

select p.pid ,p.name,p.price,o.city from product as p 
inner join orders as o on p.pid = o.product_id;

-- left join 
-- it give output if the match is not avialable 
-- the left table will include always

select p.pid ,p.name,p.price,o.city from product as p 
left join orders as o on p.pid = o.product_id;

-- right join 
-- it give output if the match is not avialable 
-- the right table will include always

select p.pid ,p.name,p.price,o.city from orders as o 
right join product as p on p.pid = o.product_id;

-- non equi join 
-- if we join tables using equal operator we dont use join
-- keyword and in we can use any operator in non equi join

select pid,city from orders ,product
where pid=product_id;


select * from orders;
insert into orders values('E2132','JK',10),('F213','MH',30);

select p.pid, p.name, p.price, o.oid, o.city from product as p inner join orders as o on p.pid=o.product_id;
select p.pid, p.name, p.price, o.oid, o.city from product as p left join orders as o on p.pid=o.product_id;
select p.pid, p.name, p.price, o.oid, o.city from product as p right join orders as o on p.pid=o.product_id;


-- natural join 
select p.pid, p.name, p.price, o.oid, o.city from 
product as p natural join orders as o where p.pid=o.product_id;

desc orders;
alter table orders rename column product_id to pid;
-- it peform like cross join if column name not match 
-- it peform inner join if column name match 
-- if column name match and values are not match it doesnt give an output
-- it is also known as bakwaas join 

