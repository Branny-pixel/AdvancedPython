-- Creating database HotelDatabase

create database HotelDataBase;
use HotelDatabase;

-- creating staff table
create table staff(
StaffID varchar(256),
FirstName varchar(256),
LastName varchar(256),
Department varchar(256),
HireDate Date
);



-- Insert records into staff table
insert into staff(staffid,Firstname,LastName,Department,HireDate) values
("S01","James","Ochieng","Catering","2024-08-12"),
("S02","Peter","Ken","Health","2023-04-09"),
("S03","Millie","Kendu","Hospitality","2022-04-09"),
("S02","Joy","Ken","Hr","2023-07-02"),
("S02","Pet","Morgan","Accounting","2021-01-06");

-- create Rooms table
create table Rooms(
RoomID varchar(256) primary key,
RoomName varchar(256),
RoomType varchar(256),
Charges int
);

insert into Rooms(RoomID,RoomName,RoomType,Charges ) values
("R01","Kiwi","Singe Room",5000),
("R02","Simba","Double Room",10000),
("R03","Bsitter","Bed Sitter",7000);

create table Guests(
GuestID varchar(256) primary key,
FirstName varchar(256),
LastName varchar(256),
RoomID varchar(256),
PaymentID varchar(256),
foreign key (RoomID) references Rooms(RoomID),
foreign key (PaymentID) references Payments(PaymentID)
);

insert into Guests(GuestID,FirstName,LastName,RoomID,PaymentID) values
("GO1","Leah","Awino","R01","P01"),
("GO2","Martin","Brown","R02","P02"),
("GO3","Betty","Bet","R03","P03");

create table Payments(
PaymentID varchar(256) primary key,
Amount int,
PaymentDate date
);

insert into Payments(PaymentID,Amount,PaymentDate) values
("P01",5000,"2023-06-07"),
("P02",10000,"2024-08-07"),
("P03",7000,"2024-06-07");

select * FROM Payments;

select 
staffid,
firstName,
LastName,
Department,
row_number()over()AS RN
FROM Staff;


select
roomid,
rank() over(partition by roomid order by roomid )AS NOM
FROM Guests;

select * from Guests;

select
paymentid,
Amount,
paymentdate,
lag(amount) over (partition by Amount) as previous
from payments;

select * from payments;


select
paymentid,
amount,
paymentdate,
lead(amount,2) over(partition by amount) as next
from payments;

With MaxPayment as (
select PaymentId,max(Amount),PaymentDate from payments)
select * from MaxPayment group by PaymentID;

select * from rooms;
select * from Guests;
insert into Guests(GuestID,FirstName,LastName,RoomID,PaymentID) values 
("G04","Konya","Alexis","R01","P01"),
("G05","Caren","Faith","R01","P02");

select FirstName,max(PaymentID)
 as Max_Payment from Guests 
 group by paymentID;
 
 select FirstName,LastName ,min()