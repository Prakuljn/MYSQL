-- multi row function 
-- aggregate function
-- this function is used to do maths  calculation


use sakila;

select sum(amount) from payment;
select count(amount) from payment;
select avg(amount) from payment;
select sum(amount)/count(amount) from payment;
select sum(amount),amount from payment; -- can't  group by with another data
select count(distinct(amount)), count(amount) from payment; 

select * from payment;


select count(*) from payment where amount= 0.99;


-- primary key is a unique value and can't be empty
-- if the column is empty count will not calculate it 

select count(*) from payment where amount= 2.99;

-- group by is a statement or a clause wich is used to collecting similar values togeather 
-- cloumn should be same in select and in group by function
select amount,count(amount) from payment group by amount;
select amount,count(amount),payment_id from payment group by amount;
-- we only use same column for group by function another column give error 

select amount,count(amount),sum(amount),avg(amount) from payment group by amount;

-- select paymentid amount payment date in month
-- the total amount for each month group by on month 

select payment_id , amount , month(payment_date) from payment; 
select sum(amount) , month(payment_date) from payment group by month(payment_date); 

-- 1. get the total amount and avg amount spend by each costumer 

select customer_id,sum(amount),avg(amount) from payment group by customer_id;
-- 2. get the total amount and the maximum and minimum amount on staff id 
select staff_id ,sum(amount) ,max(amount),min(amount) from payment group by staff_id;

-- 3. get the total number of payments done by each staff

select staff_id,count(amount) from payment group by staff_id;
-- 4. get the total amount the total number of entries the avg amount and the
-- maximum amount for each costumer where the amount greater than 2 
-- nad payment id is greater than 10

select customer_id , sum(amount) , count(amount) , avg(amount) , max(amount) from payment
where payment_id>10 and amount>2 group by customer_id ;
-- we cannot use column name in where clause which column is used in aggreate function if we use the column 
-- is physically present in table
-- where and group by => where gets more priority 
-- having and group by => group by gets more prority 

select amount, sum(amount) from payment
where amount>5 group by amount
having sum(amount)>5000;