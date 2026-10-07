44.Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100.00. 

select o.onum , o.amt * s.comm as commission 
from orders o 
join customers c 
on o.cnum = c.cnum 
join salespeople s 
on o.snum = s.snum 
where c.rating > 100;




45. Count the customers with ratings above San Jose’s average. 
select count(cnum) from customers where rating >(select avg(rating) from customers where city = 'San Jose');



46.Write a query that  produces all pairs of salespeople with themselves as well as duplicate rows with the order reversed. 

select * from salespeople s cross join salespeople s2;




 47.Find all salespeople that are located in either Barcelona or London. 

select * from salespeople where city = 'London' or city = 'Barcelona';


48.Find all salespeople with only one customer
select s.sname , s.snum from salespeople s join customers c on c.snum = s.snum 
group by s.snum having count(c.snum) = 1; 

