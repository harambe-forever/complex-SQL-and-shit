#list first and last names of all employees who work on all project controlled by dno = 5
select lname, fname
from employee
where not exists(
select *
from works_on as b
where (b.pno in(
select pnumber
from project
where dnum = 5
and 
not exists(
select *
from works_on as c
where c.essn = ssn
and c.pno = b.pno))));
