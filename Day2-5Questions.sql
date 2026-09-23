7. List names of all customers matched with the salespeople serving them. 
select c.cname , s.sname from customers c join salespeople s on s.snum = c.snum; 

8.Find the names and numbers of all salespeople who had more than one customer. 
select s.snum , s.sname from salespeople s join customers c 
on s.snum = c.snum 
group by c.snum having count(c.snum) > 1;

9. Count the orders of each of the salespeople and output the results in descending order. 
select s.sname as SalespeopleNames , count(o.snum) as NumberOfOrders from salespeople s
join orders o on s.snum = o.snum
group by o.snum order by count(o.snum) desc;


10. List the Customer table if and only if one or more of the customers in the Customer table are located in San Jose.

select * from customers where exists ( select city from customers where city ='San jose');


11. Match salespeople to customers according to what city they lived in.  

select s.sname as SalespeopleName , s.city as SalesPeopleCity ,
c.cname as CustomerName , c.city as CustomerCity
from salespeople s join customers c 
on s.city = c.city;

