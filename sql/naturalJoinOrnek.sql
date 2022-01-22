select fname, lname, address
from (employee natural join
	(department as dept, (dname, dno, mgrssn, mgrstartdate)))
where dname = "research";