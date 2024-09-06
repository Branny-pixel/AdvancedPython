USE CompanyOB;
ALTER TABLE Employees add salary int;

select* from employees;
set sql_safe_updates = 0;
update employees
set salary = Round(rand()* (80000 -40000)+ 40000,2);
select *from employees;
set sql_safe_updates = 1;

select DepartmentName,
(select count(*),
from employee,
where employees.DepartmentID = Department.DepartmentID as employeecount
from department;

select * from employees 
where salary = (select max(salary)
from employees as e
where e.departmentID = employees.DepartmentID);


select DepartmentID, AverageSalary
from(select DepartmentID,AVG(salary) as averageSalary
from employees
group by departmentID) as AvgSalaries
where AverageSalary> 50000;


from employees 
where e.DepartmentID = employees.DepartmentID);