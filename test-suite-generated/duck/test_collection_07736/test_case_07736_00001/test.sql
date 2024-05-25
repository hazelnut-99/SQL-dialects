select c1, lead(c1, 2) over (order by c0 rows between 2 preceding and 4 preceding) as b 
from (values 
	(1, 2), 
	(2, 3), 
	(3, 4), 
	(4, 5)
) a(c0, c1);
