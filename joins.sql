-- joins 
-- type of relationship in sql 
-- what are key 
-- primary key , super key , candidate key 
use sakila;
select * from actor;
select * from film_actor;
select f.film_id ,f.actor_id from film_actor as f
join actor as a;


create database regex;
use regex;
create table product( pid int, pname varchar(20), price int);
insert into product values(10,"Iphone",20000), (11,"TV",10000),
(12,"LED",3000), (13,"Jeans",800);

select * from product;

create table orders1( oid int, city varchar(20), pid int);
insert into orders1 values(124111,"Jaipur",10), (124112,"GOA",11),
(145631,"Manali",12), (59869011,"Raipur",16);
select * from orders1;


select o.oid,o.city,o.pid,p.pname,p.pid from orders1 as o
join product as p where o.pid = p.pid;
-- if we don't gie any kind of condition then its match the every row of second table

-- cross join / certesian join:- it combines each row of the table with every row of second table ./commom elements in two tables 
-- new syntex
  select o.oid,o.city,o.pid,p.pname from orders1 as o
 Inner join product as p where o.pid =p.pid;
 
 -- left join
 
  select o.oid,o.city,o.pid,p.pname from orders1 as o
 left join product as p on o.pid =p.pid;
 
 select o.oid,o.city,o.pid,p.pname from product as p
 left join orders1 as o on o.pid =p.pid;
 
-- my sql not support full join 

 select o.oid,o.city,o.pid,p.pname from product as p
 right join orders1 as o on o.pid =p.pid;
 use sakila;
 select * from actor;
 select * from film_actor;
 select * from film;
 
 
 -- you have to combine film actor and f. to find out the aid,fid and movie name done by each actor
 select a.actor_id , a.film_id ,f.title
from film_actor as a join film as f
where a.film_id = f.film_id 
order by actor_id;
 
 -- find out aid ,movie name only for those movie which has a length >100
 select a.actor_id , a.film_id ,f.title
from film_actor as a join film as f
on a.film_id = f.film_id  
where f.length >100
order by actor_id;
 
 
 -- get the aid and the number of movies he has done in his carrer;
 select a.actor_id , count(f.film_id) 
from film_actor as a join film as f
on a.film_id = f.film_id 
group by a.actor_id;
 
 
 
 -- get the tittle and the fid for the movies whose  rating is NC-17 and sort allthis movie based on desc order of film id 
 select film_id , title ,rating from film where rating ="NC-17"
order by film_id desc;
 
 
 