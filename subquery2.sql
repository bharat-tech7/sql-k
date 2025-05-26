-- Subquery 2
use sakila;
select * from payment;
select * from payment 
	where amount =(select amount from payment where payment_id=6);
	
select * from actor;

-- i need to get all the columns for the actor whose actor id is >than the of a person whose first is ed and last name chase

select * from actor where actor_id >
(select actor_id from actor where first_name ='ED' and last_name ='CHASE');

select * from payment;

-- get all the payment detail for those payment where the month should be = to the payment month for payment id 5;

select * from payment 
where month(payment_date)=(select  month(payment_date) from payment where payment_id =5);

select * from payment;

-- get the customer_id,Payment_id and the amount form the payments where the rental  id is < the rental of payment id =7
--    and amount < 5;

select customer_id,payment_id,amount from payment 
where rental_id < (select rental_id from payment where payment_id =7 and amount < 5);

-- get the amount and the total number of payments done where
--  the thotal number of payments is > the total number of payment done by amount =5.99


# 1 single row subquery 

select rental_id from payment where payment_id =7 and amount <5;


-- multirow subquery

-- in (2.99,5.99)
select * from payment 
where amount in (select amount from payment where payment_id in (3,1));

-- =any ==> its work like in operator
select * from payment 
where amount =any (select amount from payment where payment_id in (3,1));

-- >= ==> gerter than sbse choti value of our subquery
select * from payment 
where amount >any (select amount from payment where payment_id in (3,1));

select * from payment 
where amount <any (select amount from payment where payment_id in (3,1));

-- >all -->sbse bda   <all less than minium value of sub query
select * from payment 
where amount >=all (select amount from payment where payment_id in (3,1));


 