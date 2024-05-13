SELECT depname, salary, dense_rank() OVER (PARTITION BY depname ORDER BY salary) FROM empsalary order by depname, salary;
