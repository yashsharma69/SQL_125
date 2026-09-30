27. Count the number of salespeople currently listing orders in the Orders table
 select count(a.snum) from (select o.snum from orders o group by o.snum) as a;

My method 

Now gpt has suggested - 
select count(distinct snum) from orders;

28. Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name and the salesperson’s rate of commission. 

select c.cname , s.comm from salespeople s join customers c on c.snum = s.snum where s.comm
>.12; 



29.Find salespeople who have multiple customers. 
here we just gave to check the snum count wherever the count is more than 1 we will print it 


select s.sname ,count(c.snum) from customers c join salespeople s on s.snum = c.snum group by c.snum having count(c.snum) >1;



30. Find salespeople with customers located in their city. 


select s.sname , s.city ,c.cname from salespeople s join customers c on s.snum = c.snum where s.city=c.city;


31. Find all salespeople whose name starts with ‘P’ and the fourth character is ‘l’. 

select * from salespeople where sname like '%p__l%';


