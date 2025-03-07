-- aggregate functions
-- multi row function 
-- it is a methamatical operation which we use to calculate the data and give output in single roww
-- avg,max,min,std,sum,count


-- window function is bacially a sepecial type of function in which calculate the data of multiple rows and compares with sets of records
-- there type of calculation 
-- diff b/w group by and window



use prakul;
drop table employees;
create table employees (id int primary key auto_increment,dept varchar(20),salary int);
insert into employees(dept,salary) values ("hr",300),("hr",100),("marketing",70),("marketing",50),
("marketing",200),("marketing",400),("marketing",400),("marketing",600),("dsa",150),
("dsa",120),("dsa",40),("dsa",90),("dsa",500);
select *,sum(salary) over(),max(salary) over() from employees;

select *,
(select sum(salary) from employees) as sum1 from employees ;

-- windows partition by 
-- it create windows


select *, sum(salary) over(),
sum(salary) over(partition by dept) from employees;

select * from employees;
select *,sum(salary) over(order by salary) from employees;
update employees set dept='hr' where id =5;
select * from employees;
select * ,sum(salary) over(partition by dept order by salary) from employees;
update employees set dept='hr' where id =5;



-- avg salary of each dept runtime of each dept

select * ,avg(salary) over(partition by dept order by salary),sum(salary) over(partition by dept order by salary) from employees;



-- row number 
select * ,row_number() over(partition by dept) from employees;

-- rank
-- if the record have the same kind of vale so the rank will be shared and skip the values 
select * ,rank() over (partition by dept order by salary) from employees;

-- dense_rank
-- if the record have the same kind of vale so the rank will be shared and will not skip the values 
select * ,dense_rank() over( order by salary) from employees;