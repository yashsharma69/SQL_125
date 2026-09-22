I will solve every question and if I come across a new concept I will redo it multiple times until its done
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 1.  List all the columns of the Salespeople table. 
     select * from salespeople;
    
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 2.  List all customers with a rating of 100. 
     select * from customers where rating = 100;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 3.  Find all records in the Customer table with NULL values in the city column. 
     select * from customers where city is null;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 4.  Find the largest order taken by each salesperson on each date. 
     select max(o.amt) , o.odate , s.sname from salespeople s join orders o
     on s.snum = o.snum group by o.odate , s.sname;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

5.Arrange the Orders table by descending customer number. 
select * from orders order by cnum desc;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

6.Find which salespeople currently have orders in the Orders table
 select sname from salespeople where snum in (select snum from orders)
 
