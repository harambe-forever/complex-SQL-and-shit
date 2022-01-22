#for each department that has more than five employees, retrieve the department number and the number of it's employees
#who are making more than 40000
/*select dnumber, count(*)
from department, employee
where dnumber = dno and salary > 40000 and (
select dno 
from employee
group by dno
having count(*) > 5);*/
with bigdepts(dno) as
(select dno
from employee
group by dno
having count(*) > 5)
select dno, count(*)
from employee
where salary > 40000 and dno in bigdepts(dno)
group by dno;