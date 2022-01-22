#find the sum of all salaries of all employees of the "research" department, as well as the maximum salary, the minimum salary and
#the average salary in this department
select sum(salary), max(salary), min(salary), avg(salary)
from employee join department on dno = dnumber
where dname = "research"