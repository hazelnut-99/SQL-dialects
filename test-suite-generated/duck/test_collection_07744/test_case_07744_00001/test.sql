SELECT empno, sum(salary*2) OVER (PARTITION BY depname ORDER BY empno) FROM empsalary ORDER BY depname, empno;
