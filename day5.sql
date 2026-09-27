20.Find all pairs of customers having the same rating


select c.cname , r.rating from customers c join customers r
on c.rating = r.rating and c.cname <> r.cname;


21. Find all customers whose CNUM is 1000 above the SNUM of Serres. 

select * from customers where cnum  > (select snum from salespeople
where sname = "Serres")+1000;


22.Give the salespeople’s commissions as percentages instead of decimal numbers. 

select snum , concat(comm*100,'%') as percentage  from salespeople;


23. Find the largest order taken by each salesperson on each date, eliminating those MAX orders which are less than $3000.00 in value. 

mysql> select snum , odate , max(amt) from orders group by odate ,snum having max(amt) > 3000;

24. List the largest orders for October 3, for each salesperson. 
Select snum , max(amt) from orders where odate='10/03/1996' group by snum;

25.Find all customers located in cities where Serres (SNUM 1002) has customers.
select * from customers where city in (select city from customers where snum = 1002);
