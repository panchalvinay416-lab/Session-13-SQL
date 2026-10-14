use tops;


CREATE TABLE  orders1 (
   order_id int primary key,
   user_id int ,
   order_amount decimal(10,2),
   app_name varchar (100) 
);


insert into orders1 (order_id,user_id,order_amount,app_name)
values
(1, 101, 550, 'Zomato'),
(2, 102, 750, 'Swiggy'),
(3, 103, 1200, 'Zomato'),
(4, 104, 450, 'Swiggy'),
(5, 105, 900, 'UberEats'),
(6, 101, 650, 'Zomato'),
(7, 102, 1100, 'Swiggy'),
(8, 106, 800, 'UberEats'),
(9, 107, 1500, 'Zomato'),
(10, 103, 700, 'Swiggy');

select * from orders1;


SELECT 
   order_id,
   user_id,
   order_amount,
   app_name,
  SUM(order_amount)over() as total_order_amount
from orders1;


SELECT 
   order_id,
   user_id,
   order_amount,
   app_name,
   AVG(order_amount) over
   ( 
      PARTITION BY user_id
	) as order_amount_avg
from orders1;
      