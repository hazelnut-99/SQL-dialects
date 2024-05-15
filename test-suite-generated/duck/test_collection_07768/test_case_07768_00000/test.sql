SELECT depname, empno,
	nth_value(empno, 2) OVER (
		PARTITION BY depname ORDER BY empno ASC
		ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
		) fv
FROM empno_nulls
ORDER BY 1, 2;
