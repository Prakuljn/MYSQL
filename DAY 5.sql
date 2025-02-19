use sakila;



-- having can also use with normal column but the calculation output get slower
-- having can only used by group by function 

select amount,sum(amount) from payment
group by amount having amount != 0.99;

-- order by and alias 

select amount , amount*10 as new from payment;

-- we can use [pre defined name as column name but it should be in " `` "  backtick
select amount , amount*10 as `select` from payment;

-- order by 
-- aesc and desc
-- we can use order by function in one or more column

select * from payment
order by amount desc,rental_id desc;


select amount,sum(amount) from payment 
	where amount!=0.99
		group by amount having sum(amount)>800;

-- order by alias 
-- subquery
-- case statement
-- flow control function



-- flow control 
-- if 

select amount ,if(amount=0.99,"correct","incorrect") from payment; 
select amount ,if(amount=0.99,"correct",amount) from payment; 

select amount ,if(amount=0.99,"correct",
				  if(amount=2.99,"yes","no")) from payment; 
                    
-- select column,
-- __case
-- _____when condition then statement
-- _____when condition then statement
-- __end

select amount,
case 
	when amount=0.99 then 'value is 0.99'
    when amount=2.99 then 'yes'
    else amount
    end as p
from payment;

-- select payment table if the count of payment done for each amount is greater 
-- than 10k print 
-- we have amount greater than 10000


select amount,count(amount) as a,
       if(count(amount)>1000,"we have amount greater than 1000 ","count less than 1000") as m
	 from payment group by amount ; 


-- if the amount is greater than 1 print greater than 1
-- greater than 3 print greater than 3
-- greater than 7 print greater than 7
-- amount is less than 1 

select amount ,
case 
	when amount>1 then "amount is greater then 1"
    when amount>3 then "amount is greater then 3"
    when amount>7 then "amount is greater then 7"
    else "amount is less than 1"
end as a
from payment;

-- subquery 
-- query within a query is called sub query
-- 
select * from payment;
select amount from payment where payment_id=5;

select * from payment where 
	amount=(select amount from payment where payment_id=3);
    
    
    
    
    
    
    select ceil(2.00001) from dual;
