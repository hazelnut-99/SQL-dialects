select t1.a, t2.a, t2.b, t3.b
from table1 as t1
join table2 as t2 on t1.a = t2.a
join table3 as t3 on t2.b = t3.b
ORDER BY t1.a
;
