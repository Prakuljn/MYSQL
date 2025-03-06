-- TCL command
-- tansctional control language
-- the collection of multiple statement 
-- TCL Command Definition: The TCL (Transaction Coqtol Language) commands In SQL help users manage and
-- a database's transactions (charoes) to maintain consistency
-- DML,DCL,DDL
-- start ya stop 
-- start = sml task 



-- TCL ==> commit,savepoint,rollback
select @@autocommit;
set autocommit=0;
show databases;

create database prakul;
use prakul;
create table yash(id int ,fname varchar(23));
insert into yash values(10,"shubham");
select * from yash;
select count(*) from yash;
commit; -- save the transiction
insert into yash values(11,"aman");
commit;
rollback; -- stop the surrent transction from updating
delete from yash where id=10;
insert into yash values(12,"anmol");
update  yash set fname="prakul";
select * from yash;
create table pj(id int);


insert into yash values(13,"naman");
select * from yash;
update  yash set fname="yt";
select * from yash;
savepoint yash_prakul;
insert into yash values(14,"pjain");
select * from yash;
rollback; -- it clear all transaction it doesn't with savepoint
select * from yash;
rollback to yash_prakul;  -- it rollback the transaction upto last save point seet by us 

