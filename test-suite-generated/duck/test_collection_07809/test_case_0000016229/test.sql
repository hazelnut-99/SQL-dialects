SELECT empno, first_value(empno) OVER (PARTITION BY depname ORDER BY empno) fv FROM empsalary ORDER BY 2 DESC, 1 ASC;
