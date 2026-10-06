41. Find all orders with amounts smaller than any amount for a customer in San Jose. 

select * from orders where  amt < any (select o.amt from orders o join customers c on o.cnum = c.cnum  where c.city = 'San Jose');


42. Find all orders with above average amounts for their customers
select * from orders o1 where o1.amt > (select avg(o2.amt) from orders o2 where o2.cnum = o1.cnum);

43. Write a query that selects the highest rating in each city. 

 select max(rating)  , city from customers group by city;


