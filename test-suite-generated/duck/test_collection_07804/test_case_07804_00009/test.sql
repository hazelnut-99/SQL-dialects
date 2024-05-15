SELECT depname, COVAR_POP(salary, empno) OVER (PARTITION BY depname ORDER BY salary, empno) c FROM empsalary ORDER BY depname, empno;
