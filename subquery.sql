-- datatypes in sql 
-- number (int,float,double)
-- character(char,varchar,string)
-- date , timestap 
-- create statement 
 
 create table test(id int);
 insert	into test values(10);
select * from test;


-- tintint --> 8 bit  2^8 => 256
create table test2(id tinyint);
 insert	into test2 values(127);
select * from test2;

-- unsigned  --> 
create table test3(id  tinyint unsigned);
 insert	into test3 values(128);
select * from test3;

create table test4(id  decimal(5,2) );
 insert	into test4 values(845.74125);
 insert into test4 values(8454.7); -- will givr error
select * from test4;

create table test5(fname char(5));
 insert	into test5 values('hi');
 insert	into test5 values('hias');
 insert	into test5 values('hiadsds');
 select * from test5;
 
 
 create table test6(fname varchar(5) ); -- varchar variable charcter
 insert	into test6 values('hi');
 insert into test6 values('hi    '); 
 select fname, char_length(fname) from test6;
 insert into test6 values('hiasdfsaddf');
select * from test6;

-- date and timestamp 

	create table test7(dob date);
 insert	into test7 values('2025-12-01'); -- right yyyy-mm--dd
 insert into test7 values('22-12-2026'); -- #error (incorrect format)
select * from test7;

create table test8(dob timestamp);
 insert	into test8 values('2023-12-01 10:15:59');
  insert	into test8 values(now());
select * from test8;


-- blob ?
-- image - Learning assignment 

-- subquery

-- query within a query 
select payment_id, amount from payment;
 
 select * from payment where payment_id = 10;
 select * from payment where amount=5.99;

 select amount from payment where payment_id =15;
select * from payment
 where amount=(select amount from payment where payment_id =15);
select * from payment;
-- get the payment id coustomerid retailid and amount only for those payment where the staff_id is = the staffid of retail =1422

select payment_id, customer_id,rental_id, amount from payment where staff_id = (select staff_id from payment where rental_id =1422);