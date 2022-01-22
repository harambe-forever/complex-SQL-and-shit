#count the total number of employees whose salaries exceed 40k dollars in each department, but only for departments where 
#more than five employees work
select count(*), dno
from employee
where salary > 40000
group by dno
having count(*) > 5