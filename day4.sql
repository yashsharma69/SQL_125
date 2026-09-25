19.Write a query that uses the EXISTS operator to extract all salespeople who have customers with a rating of 300. 

select * from salespeople s where exists (select c.snum from customers c join salespeople on 
c.snum = s.snum where rating = 300);




