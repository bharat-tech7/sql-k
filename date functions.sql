-- numbers,Date Function 

-- dual 
select 9*152 from dual ;

-- now()
select sysdate() ,now(),curdate(),curtime(),current_timestamp() from dual;
select now(),adddate(now(),2); -- adddate() is used for add date
select now(),adddate(now(),interval 2 month )from dual;
select datediff(now(),	'2025-07-16 17:20:00') from dual;
-- datediff for difference between 2 date
select last_day(now()) from dual;
select month(now()),year(now()) from dual;
select extract(year from now()) from dual ;
select extract(second from now()) from dual ;
select extract(minute from now()) from dual ;
select extract(month from now()) from dual ;
select date_format(now(),'this year is %Y') from dual ;
-- %Y Access modifier 

-- numbers
-- round(),truncate(),pow ,floor() ceil
select 24.325,round(24.325),round(24.565,1) from dual;
select 24.325,round(455.32,-2) from dual ;
select round(364.37,1) ,truncate(364.32,1) from dual;
select mod(11,2) , pow(2,3),floor(10.99999),ceil(19.0001)from dual;
use sakila ;
-- if(condition,true,false)
-- if (condtion,true,if(condtion,true,false))
select  first_name , actor_id , if(first_name ='Nick',actor_id*10,'No value') from actor;  
-- if actor_id = even ,concat(first_name,Last_name), concatws('$',first_name,Last_name)
select first_name,actor_id, if(actor_id%2=0,concat(first_name,last_name),concat_ws('$',first_name,last_name)) from actor;
select first_name, 
case
	when mod(actor_id,2)=0 then concat(first_name,last_name)
    when actor_id =5 then concat_ws('$',first_name,last_name)
else "no"
end
from actor;
