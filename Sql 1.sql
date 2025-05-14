use sakila;
select * from actor;
select database();
show databases;
show tables ;
select * from actor;
select actor_id,first_name from actor;
describe actor;
select actor_id*10 from actor;
select * from actor where actor_id=5;
select * from actor where first_name ='ED';
select * from actor where first_name ='ED' and actor_id>100;
select * from actor where first_name ='ED' or actor_id>100;
select * from actor where actor_id >10 and actor_id <25;
-- comment , between operator ,between lower and higher
select * from actor where actor_id between 11 and 25;
select * from actor where actor_id in(2,5);


