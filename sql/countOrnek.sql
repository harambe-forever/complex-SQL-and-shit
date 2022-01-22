#retrieve the total number of employees in the company and the number of employees in the "research" department
select count(*)
from employee;

select count(*)
from employee,department
where dno = dnumber and dname = "research"