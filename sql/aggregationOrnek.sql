select sum(salary), max(salary), min(salary), avg(salary)
from employee;

select sum(salary) as total_sal,
max(salary) as highest_salary,
min(salary) as lowest_salary,
avg(salary) as average_salary
from employee;
