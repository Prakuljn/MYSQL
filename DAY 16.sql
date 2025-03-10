-- 	windows function to find the n highest salary 
use sakila;
select * from payment;
select * from
(select amount,
dense_rank() over(order by amount desc) as rating from payment) as tab where rating =2;

select amount,
dense_rank() over(order by amount desc) as rating from payment group by amount order by amount desc limit 0,1;


-- cte == common tablle expression


with prakul as
(select amount,
dense_rank() over(order by amount desc) as rating from payment) 
select * from prakul where rating =5
;



--  cte stands for common table expression it store the temperory data in the form of table which we select in query we use
--  with method to use cte .
-- with variable_name as
-- (select command for table)
-- queries to execute from table variable_name;
-- we use cte
-- 	1. to break down the complex logic to simple one
--  2. it make our table easy and readable
--  3. to use data recursively 


-- CTE ->  Common Table Expression
-- It store the temporary result set we we use insert update delete.
-- with the help of with keyword we use cte
-- we refer it multiple times
-- cte are used to breakdown from complex logic to simpler logic
-- cte makes the code readable
-- we use cte for recursively work
-- syntax: with cte as select statement   # we don't use semicolon after this
-- select * from cte
-- we can write any word in place of cte like anmol etc;
-- it available upto the session after semocolon the tabe doesnt exsit 



create temporary table prakul as select * from payment;
select * from prakul;

-- temporary table exsit only upto session if we close the workbench the table delete automatically 


use sakila;
with cte1 as (select * from actor where actor_id >2),
cte2 as (select * from film_actor where film_id >30)
select cte1.actor_id ,film_id from cte1 join cte2 where cte1.actor_id =cte2.actor_id;


-- parameterized cte 

set @aa = 33;

with cte1 as (select * from actor where actor_id > @aa),
cte2 as (select * from film_actor where film_id >30)
select cte1.actor_id ,film_id from cte1 join cte2 where cte1.actor_id =cte2.actor_id;

-- recursive cte -- until some condition is satisfied
with recursive num_table 
as (select 10 as num 
union select num+1 from num_table where num <13)
select * from num_table;



-- actor_id first name full name from the tbale where either the actor id 
-- is greater than five orr the name is nick 
select * from actor;
with recursive prakul 
as (select first_name,last_name ,actor_id from actor  where first_name ='nick' 
union select first_name,last_name ,actor_id from actor where actor_id>5 )
select * from prakul;



-- views and sub query and temperary table