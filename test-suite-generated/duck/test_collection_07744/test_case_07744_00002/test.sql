SELECT empno, 2*sum(salary) OVER (PARTITION BY depname ORDER BY empno) FROM empsalary ORDER BY depname, empno;
