36.Select all the possible combinations of customers that you can assign. 

select c1.cname , c2.cname from customers c1 cross join customers c2; 



37.Select all orders that are greater than the average for October 4
select amt from orders where amt >(select avg(amt) from orders  where odate = '1996-10-04');


38.Write a select command using a corelated subquery that selects the names and numbers of all customers with ratings equal to the maximum for their city. 

select c1.cname , c1.num from customers c1 where c1.rating = (select max(c2.rating) from customers c2 where c1.city = c2.city);



 39.Write a query that totals the orders for each day and places the results in descending order

select odate,sum(amt) from orders group by odate order by sum(amt) desc



40.Write a select command that produces the rating followed by the name of each customer in San Jose

select  rating , cname from customers where city = 'San Jose';

