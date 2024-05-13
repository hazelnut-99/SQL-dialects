SELECT depname, salary, rank() OVER (PARTITION BY depname ORDER BY salary) FROM empsalary order by depname, salary;
