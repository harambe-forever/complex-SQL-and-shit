#for each project on which more than two employees work, retrieve the project number, the project name, and the number of
#employees who work on the project
select pnumber, pname, count(*)
from project, works_on
where pnumber = pno
group by pnumber, pname
having count(*) > 2