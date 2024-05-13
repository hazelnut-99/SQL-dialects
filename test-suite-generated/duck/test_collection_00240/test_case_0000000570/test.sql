select * from (
	(select {'x': 1, 'y': 2, 'z': 3} a from range(3))) tbl(i)
	join
	((select {'x': 1, 'y': 2, 'z': 3} a from range(3))) tbl2(j)
	on (i=j);
