SELECT depname,
   sum(salary) OVER (PARTITION BY depname order by empno) AS depsalary,
   min(salary) OVER (PARTITION BY depname, empno order by enroll_date) AS depminsalary
FROM  empsalary
order by depsalary;
