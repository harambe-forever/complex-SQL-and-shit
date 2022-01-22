update employee
set salary = 
case when dno = 5 then salary + 2000
when dno = 4 then salary + 1500
when dno = 1 then salary + 3000;