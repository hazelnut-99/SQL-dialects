SELECT depname,
   sum(salary) OVER (PARTITION BY depname order by empno) AS depsalary
FROM  empsalary
order by depsalary;
