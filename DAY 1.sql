show databases;
use sakila;
show tables;
describe actor;
desc actor;
select * from actor;
select first_name,ACTOR_ID FROm ACTOR;
select actor_id, first_name,actor_id*100 from ator;
select actor_id, first_name,actor_id*100 from actor;
-- select * from table; => all elements 
-- where caluse
select * from actor
	where actor_id>6;
-- > < <> >= <= = != 
-- operator ==> between , in and like operator
-- between ==> range of values 
select * from actor
	where actor_id between 1 and 5;
-- in this operator smallest value appearrs first
select * from actor
	where actor_id in (2,5,500);
-- get actor id and first name is nick or ed
select * from actor
	where first_name in ("nick","ed");
-- like operator => search pattern 
-- wildcard character-> %=> zero and more charactor
--                      _ => only one charactor 
select * from actor	
	where first_name like "E%";
select * from actor	
	where first_name like "%E";
select * from actor	
	where first_name like "S%Y";
select * from actor	
	where first_name like "%A";
select * from actor	
	where first_name like "%A%";
select * from actor	
	where first_name like "_%SA%_";
select * from actor	
	where first_name like "E_";
select * from actor	
	where first_name like "E%";
select * from actor	
	where first_name like "_A";
select * from actor	
	where first_name like "_A%";
select * from actor	
	where first_name like "____%";
select * from actor	
	where first_name like "%I__";
select * from actor	
	where first_name like "_%E%_";
select * from actor	
	where first_name like "_%EE%_";
select * from actor	
	where first_name like "_H%Z_";
select * from actor	
	where first_name like "%R__";