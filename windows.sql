use companyOB;
select
    employeeid,
    firstname,
    lastname,
    departmentid,
    ROW_NUMBER() OVER (PARTITION BY DEPARTMENTID ORDER BY LASTNAME)AS
    row_num
from employees;
update employees set departmentid = 102  where employeeid= 9;
insert into employees(employeeid,firstname,lastname,departmentid,hiredate,salary,phonenumber)
values
(11,"Ongwen","Orwa",102,"2024/12/30",4444,"0700000000"),
(12,"Oina","Ann",102, "2024/11/26",2222,"0111111111");
set sql_safe_updates=0;
update employees set salary = 5000 where employeeid = 11;
set sql_safe_updates=0;
select
    employeeid,
    firstname,
    lastname,
    departmentid,
    salary,
    rank() over (partition by departmentid order by salary desc) as ranks
from employees;
update employees
set salary = round(rand()*(100000),2);

select
    employeeid,
    firstname,
    lastname,
    departmentid,
    salary,
    sum(salary) over (partition by departmentid order by salary desc) as total_salary
from employees;

select
    employeeid,
    firstname,
    lastname,
    departmentid,
    salary,
    AVG(salary) over (order by employeeid rows between 2 preceding and current row) as moving_avg
from employees;

with employeesalaries as(
select
    employeeid,
    firstname,
    lastname,
    departmentid,
    salary
    from employees
    where salary >50000
    )
    select 
    departmentid,
    AVG(salary) as avg_salary
    from employeesalaries
    group by departmentid;
