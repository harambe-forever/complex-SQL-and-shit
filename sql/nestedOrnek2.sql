#retrieve the name of each employee who has a dependent with the same first name and is the same sex as the employee
#insert into employee values("Cankan", "z", "Zort", "69420", "1931-09-09", "Guzelbahce İzmir", "M", "10000.00", null, 5);
#insert into dependent values("69420", "Cankan", "M", "2000-01-01", "Son");
select e.fname, e.lname
from employee as e
where e.ssn in (
	select essn
    from dependent as d
    where e.fname = d.dependent_name and e.sex = d.sex);