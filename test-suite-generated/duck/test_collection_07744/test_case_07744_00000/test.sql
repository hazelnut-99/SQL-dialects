SELECT depname, sum(sum(salary)) over (partition by depname order by salary) FROM empsalary group by depname, salary order by depname, salary;
