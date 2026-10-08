49.Write a query that joins the Customer table to itself to find all pairs of customers served by a single salesperson. 

select c1.cname , c2.cname from customers c1 join customers c2 on c1.snum = c2.snum where c1.cname != c2.cname;



50.Write a query that will give you all orders for more than $1000.00 

select * from orders where amt > 1000;



51.Write a query that lists each order number followed by the name of the customer who made that order. 
select o.onum , c.cname from orders o join customers c on o.cnum = c.cnum;



52.Write 2 queries that select all salespeople (by name and number) who have customers in their cities who they do not service, one using a join and one a corelated subquery. Which solution is more elegant? 
select s.sname , s.snum from salespeople s join customers c on s.city = c.city where s.snum != c.snum;


 53.Write a query that selects all customers whose ratings are equal to or greater than ANY (in the SQL sense) of Serres’?

select * from customers c where  c.rating >= any (select c1.rating from customers c1 join salespeople s on c1.snum = s.snum where s.sname = 'Serres');



