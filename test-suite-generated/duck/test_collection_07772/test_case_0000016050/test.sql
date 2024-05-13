SELECT depname, empno,
	nth_value(empno, case empno % 3 when 1 then 2 else NULL end) OVER (
		PARTITION BY depname ORDER BY empno ASC
		ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
		) fv
FROM empsalary
ORDER BY 1, 2;
