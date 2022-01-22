/*select distinct pnumber
from project
where pnumber in (
select pnumber
from project, department, employee
where dnum = dnumber and mgrssn = ssn and lname = "Smith")
or pnumber in(
select pno
from works_on, employee
where essn = ssn and lname = "Smith");*/
select *
from works_on
where(pno, hours) in (
select pno, hours
from works_on
where essn="123456789");