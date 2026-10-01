Q32.Write a query that uses a subquery to obtain all orders for the customer named Cisneros. Assume you do not know his customer number. 

select onum , cnum from orders where cnum=(select cnum from customers where cname='Cisneros');

--------------------------------------------------------------------------------------------------------------------------------------

33. Find the largest orders for Serres and Rifkin. 

select max(amt) from orders group by snum having snum in (select snum from salespeople where sname = 'Serres' or sname ='Rifkin');

--------------------------------------------------------------------------------------------------------------------------------------


34.Extract the Salespeople table in the following order : SNUM, SNAME, COMMISSION, CITY

mysql> select snum , sname , comm , city from salespeople;

--------------------------------------------------------------------------------------------------------------------------------------


35. Select all customers whose names fall in between ‘A’ and ‘G’ alphabetical range. 

select cname from customers where cname >= 'A' and cname <= 'H';

