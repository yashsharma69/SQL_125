12. Find the largest order taken by each salesperson

select s.sname as SalespeopleName, max(o.amt) as LargestAmount from salespeople s join orders o on s.snum = o.snum 
group by s.snum;


 13 . Find customers in San Jose who have a rating above 200. 


with city as (
select cname as Customername ,rating as rate from customers where city ='San jose')
select * from city where rate > 200;  

select * from customers where city = 'San jose' and rating > 200;



14. List the names and commissions of all salespeople in London. 

select sname as salespeopleName ,  concat(comm*100,'%') as commision from salespeople where city = 'London';



15. List all the orders of salesperson Motika from the Orders table

select * from orders o join salespeople s on s.snum = o.snum where s.sname = 'Motika';



16. Find all customers with orders on October 3. 
select c.cname as customeName, o.odate as OrderDate from customers c join orders o on c.cnum = o.cnum where o.odate = '1996-10-03';



 17.Give the sums of the amounts from the Orders table, grouped by date, eliminating all those dates where the SUM was not at least 2000.00 above the MAX amount. 

select sum(amt) as TotalSum , odate as Orderdate from orders 
group by odate 
having sum(amt) >= max(amt)+2000;

18. Select all orders that had amounts that were greater than at least one of the orders from October 6. 

select* from orders where amt > any (Select amt from orders where odate = '1996-10-06');                                                                                                                                

