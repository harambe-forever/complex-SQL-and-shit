select dno, count(*), avg(salary)
from employee
group by dno;

select pnumber, pname, count(*)
from project, works_on
where pnumber = pno
group by pnumber, pname;