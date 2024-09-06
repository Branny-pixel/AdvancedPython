use companyOB;

select
employeeID, 
firstname,
lastname,
departmentID,
case departmentID
when 101 then 'HR'
when 102 then 'IT'
when 103 then 'Finance'
else 'other'
end as departmentname
from employees;

select
employeeID,
firstname,
lastname,
salary,
case
when salary <50000 then 'low'
when salary between 50000 and 70000 then 'Medium'
else 'high' 
end as salary_level
from employees;

select 
departmentID,
sum(case
when departmentID =101 then salary
else 0
end) as spent_101,
sum(case
when departmentID = 102 then salary
else 0
end) as spent_102,
sum(case 
when departmentID =103 then salary
else
0
end)spent_103
from employees
group by departmentID; 


select * from employees;

select 
employeeID,
firstname,
lastname,
coalesce(phonenumber,'no phone number') as contact_number
from employees
limit 5;

alter table department
add column phonenumber varchar(100);
alter table department
add column email varchar(100);


select
departmentname,
case
when departmentID = 101 then coalesce(phonenumber, 'No phone')
when departmentsid = 102 then coalesce(email,'No email')
else 'contact admin'
end as contact_info
from departments;

