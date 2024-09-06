use companyOB;

SELECT Employees.FirstName, Employees.LastName,Department.DepartmentName
from Employees
INNER JOIN Department on Employees.DepartmentID = Department.departmentId;
select employees.employeeID, employees.FirstName, Employees.LastName,project.projectID, project.projectName
from employees
Cross join project;