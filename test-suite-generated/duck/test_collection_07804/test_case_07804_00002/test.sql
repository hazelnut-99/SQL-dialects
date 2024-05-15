SELECT row_number() OVER (PARTITION BY depname ORDER BY salary) rn FROM empsalary ORDER BY depname, rn;
