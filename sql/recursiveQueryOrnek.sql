#the below query starts with an empty sup_emp and succesively builds sup_emp table by computing immediate builds
# sup_emp table by computing immediate superviees first, then second level supervisees, etc. until a fixed point is reached and 
# no more supervisees can be added
with recursive sup_emp(supssn, empssn) as 
select superVisorssn, ssn
from employee
	union
select e.ssn, s.supssn
from employee as e, sup_emp as s
where e.superVisorssn = s.empssn
select *
from sup_emp;