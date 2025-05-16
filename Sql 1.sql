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


-- Distinct(unqiue value), count(count the rows)
select distinct(first_name) from actor;
select count(first_name) from actor;
select count(distinct(first_name)) from actor;

-- Functions 
-- scaler function=> 
-- Single function-- 1 row =>apply =>result for each row 
-- multi-row functions  
-- String Functions 
select first_name, lower(first_name),upper(first_name),length(first_name),substr(first_name,1),substr(first_name,2,3),substr(first_name,-3), substr(first_name,-3,2) from actor;
-- # substr(col,index,total_character)
select first_name ,instr(first_name,'I') from actor;
select first_name,last_name,concat(first_name,'-',last_name,'$')from actor;
select first_name,last_name,concat_ws('-',first_name,last_name,'$')from actor;
-- concat for add the string 
-- concat_ws add the string with seperator 
-- trim() remove wildspace from start and end 
select first_name, trim('             h     hey             ')from actor;
-- lpad(),rpad() 
select first_name,rpad(first_name ,6,'$'), lpad(first_name,5,'#') from actor;



