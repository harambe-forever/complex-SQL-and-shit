/*SELECT 
    dnumber, COUNT(*)
FROM
    department,
    employee
WHERE
    dnumber = dno AND salary > 40000
        AND (SELECT 
            dno
        FROM
            employee
        GROUP BY dno
        HAVING COUNT(*) > 5)*/
/*with bigdepts(dno) as(select dno
						from employee
                        group by dno
                        having count(*) > 5)
select dno, count(*)
from employee
where salary > 40000 and dno in bigdepts
group  by dno;*/