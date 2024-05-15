select * from (
	(select [1,2,3] a from range(3))) tbl(i)
	join
	((select [1,2,3] a from range(3))) tbl2(j)
	on (i=j);
