-- cte
-- common table expression
-- views: virtural table 
-- it help user to easily intract quries 
-- it dont store the data on disk 
-- its like a refrence to your original table 
 -- its is make your commplex quries simple it is used to enhance the security 
 -- it doesn't delete or drop the table automatically it will be dropped manually 
 
show databases;
use prakul;

show tables;
select * from employees;
-- create table as ctas;
create table payment as select * from sakila.payment;
create view pay_view
as select payment_id ,customer_id from payment;
select * from pay_view;
drop table payment1;
create table payment1 as select payment_id ,customer_id from sakila.payment where payment_id<5;
create view pay_view1
as select * from payment1;
select * from pay_view1;
insert into pay_view1 values(5,10);
select * from pay_view1;
-- here the data will aslo inserted into original data 


create table payment2 as select payment_id from payment1;

select * from payment2;
insert into pay_view1 values(6);
-- the value will not insert data  until the default values to the other
-- column which we cant access if the other column has default values it will store the value

create view acotor1 as select * from sakila.actor join sakila.film_actor;
select * from sakila.actor;
select * from sakila.film_actor;
drop view actor1;
create view actor1 as select a.actor_id,a.first_name,a.last_name,a.last_update,f.film_id from sakila.actor as a join sakila.film_actor as f where a.actor_id = f.actor_id;
select * from actor1;

-- view is updatable where there is one-to-one relationships
-- view is not updatable if it contains aggregate function , distinct, group by , having, union or union all , subquery in the selected list



-- With LOCAL, the view WHERE clause is checked, then checking recurses to underlying views and applies the same rules.

-- With CASCADED, the view WHERE clause is checked, then checking recurses to underlying views, adds WITH CASCADED CHECK OPTION
-- to them (for purposes of the check; their definitions remain unchanged), and applies the same rules.

-- With no check option, the view WHERE clause is not checked, then checking recurses to underlying views, and applies the same rules.


CREATE TABLE t1 (a INT);
CREATE VIEW v1 AS SELECT * FROM t1 WHERE a < 2
WITH CHECK OPTION;
CREATE VIEW v2 AS SELECT * FROM v1 WHERE a > 0
WITH LOCAL CHECK OPTION;
CREATE VIEW v3 AS SELECT * FROM v1 WHERE a > 0
WITH CASCADED CHECK OPTION;

INSERT INTO v2 VALUES (1);

INSERT INTO v3 VALUES (1);