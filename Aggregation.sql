use CompanyOB;
select sum(salary) as totalsalary
from empoyees2;

select departmentID,max(HireDate) as  latestHireDate
from employees
group by DepartmentID;
select*from empoyees2
where salary>70000;

select DepartmentID, count(*) as Employeecount
from employees
group by departmentID
having count(*) >=2;
select*from empoyees2
where department = 'HR' and salary >=50000;
select* from empoyees2
where not department = 'HR';
select * from employees
where departmentID in(101,102,103);
select * from empoyees2
where salary between 60000 and 70000;
select * from empoyees2
where name like '%e';
select * from empoyees2
where name like '%ac%';

