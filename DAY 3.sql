-- function 
-- numerical function 
use sakila;
-- single row catagary function 
select * from actor;
-- nummeric funnction 
-- round , truncate , mod ,pow 
select round(12.45) from dual;
select round(12.7) from dual ;
-- if num > .5 it return lesser value
select round(12.41,1) from dual;
select round(12.41,2) from dual;
select round(124.34,-1) from dual;  -- for ones place 
select round(124.34,-2) from dual;  -- for tens place
select round(924.46,1) from dual;  -- for thousand place
-- to extract the value we use truncate
select truncate(124.34,-1) from dual;
-- mod 
select mod(124.34,2)from dual; 
select pow(2,2) from dual;

-- date funnction 
select curdate() from dual;
select curtime() from dual;
select now() from dual;
select current_timestamp() from dual;



select adddate(curdate(),-1) ,adddate(curdate(),1)from dual;
select adddate(curdate(),interval 1 month ) from dual; -- add same for week and year and days 
select adddate(curdate(),interval -1 month ) from dual; -- sub same for week and year and days
select datediff(curdate(),adddate(curdate(),interval -1 week )) from dual;  -- different b/w two days 
select now(),last_day(now()) from dual;
select (date_format(now(),'current month is %M')) from dual;
select str_to_date('13 2005 01','%d %Y %m') from dual;
