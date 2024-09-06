select * 
from payments;

-- using max
select RoomType, charges, max(Charges) over() as
 max_charges 
 from rooms;

-- using avg
select RoomType, charges, avg(Charges) over() as
 avg_charges 
 from rooms;
 
--   using partition
 select RoomID, RoomName,Roomtype,charges ,max(charges) over(Partition by RoomType order by RoomID) as max_charges
 from rooms;
 
--  using partition by and order by in descending order
 select PaymentID ,Amount,min(Amount) over(partition by Amount order by paymentid desc) as Min_Amount 
 from payments;
 
--  row_number
select *, 
row_number() over(partition by Amount )  as rn
from payments;
 
 select *, 
row_number() over()  as rn
from payments;

select * ,
row_number() over(partition by Department) as rn
from staff;

-- rank - partion by department and order ny staffId
select * ,
rank() over(partition by Department order by staffID) as ranking
from staff;


-- lag
 select * ,
 lag(LastName) over() as previous
 from staff;

-- lead
 select * ,
 lead(LastName) over(partition by Department) as next
 from staff;
