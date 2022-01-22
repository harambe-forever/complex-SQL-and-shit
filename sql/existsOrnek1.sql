select fname, lname, ssn
from employee
where exists(
select *
from dependent
where ssn = essn)
and exists(
select *
from department
where ssn = mgrssn)
#retrieve all the employees' name who manage a department and have a dependent