SELECT depname, empno, 1 + empno %3 as offset,
	nth_value(empno, 1 + empno %3) OVER (
		PARTITION BY depname ORDER BY empno ASC
		ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING
		) fv
FROM empsalary
ORDER BY 1, 2;
