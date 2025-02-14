use sakila;
select * from actor;
-- and and or
select * from actor 
	where actor_id>2 and first_name = "JOHNNY";
select * from actor 
	where actor_id>2 or first_name = "JOhNNY";
-- and get more priority 
select * from actor 
	where actor_id>2 and (first_name = "ED" or first_name = "NICK");
    
    
    
-- functions in python 
-- block of code  
-- code readable



-- pre defined 
-- string function 


-- 1.concat 
select first_name ,concat_ws("-"first_name, last_name)
from actor;
select * from actor
	where concat(first_name, last_name)="EDCHASE";
    
-- 2. substr

select first_name
	,substr(first_name,1)
    ,substr(first_name,1,5)
    ,substr(first_name,-3)
from actor;		

-- instr(to find the position of any character)
select first_name
	,instr(first_name,"E")
from actor;	

-- locate(to find the position of any character from any position )
select first_name
	,instr(first_name,"E")
    ,locate('E',first_name,3)
from actor;	

-- char_length(to find the length of character)
-- char(to find the length of character inn byte form)
select first_name
	,instr(first_name,"E")
    ,locate('E',first_name,3)
    ,char_length(first_name)
    ,length(first_name)
from actor;	


select "hey","hello" from dual;
select length("大"),char_length("大") from dual;
select 7873 from dual;
select amount from payment;
select first_name,lpad(first_name,5,"$"),pad(first_name,5,"$") from actor;
select  'zzzzzdaszzzz',trim(leading 'z' from 'zzzzzdaszzzz') from dual;
select  'zzzzzdaszzzz',trim(trailing 'z' from 'zzzzzdaszzzz') from dual;
select  'zzzzzdaszzzz',trim(both 'z' from 'zzzzzdaszzzz') from dual;