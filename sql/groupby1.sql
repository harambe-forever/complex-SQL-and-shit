SELECT 
    *
FROM
    employee
WHERE
    salary in (select min(salary)
				from employee
                group by fname)
order by salary desc