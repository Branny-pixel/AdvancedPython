use companyOB;
select distinct
  employeeid,
  trim(firstname) as firstname,
  trim(lastname) as lastname
from employees;


SELECT*
From employees
where phonenumber is not null;