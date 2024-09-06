Create  database Revision;
use revision;

create table employee(
employeID int,
FirstName varchar(200),
LastName varchar (200),
hiredate date
);

create table students(
studentID int primary key,
FirstName varchar(200),
LastName varchar (200),
admissiondate date
);

create table subjects(
subjectcode int primary key,
subjectName varchar(32)
);

alter table students add column  subjectcode int;
select* from employee;
alter table employee add column salary int;
insert into students( studentID, FirstName,LastName,SubjectCode)
values
(1,'Branice','Awino',101),
(2,'Edwin','Ntabo',102);
insert into students(studentID,FirstName,Subjectcode)
values
(103,104,105);
update students set LastName = 'Kilang' where studentID =1;

insert into  employee(employeID,FirstName,LastName,HireDate,Salary)values
(1001,'Edwin','Okoth','2024/08/01',4444),
(1002,'Mary','Wanja','2020/07/05',233),
(1003,'Aida','Lina', '2023/06/20',435),
(1004,'Lucy','Leah','2022/06/02',256);

insert into subjects(subjectcode,subjectName)values
(101,'English'),
(102,'kiswahili'),
(103,'science'),
(104,'physics');
select sum(salary) as totalsalary
from employee;
select max(salary) as totalsalary
from employee;


select firstName,LastName
from employee
where salary>500;

select manufacturer,count(*) as car_salescount
from car_sales
group by manufacturer
having car_salescount >4;

































































































































































































