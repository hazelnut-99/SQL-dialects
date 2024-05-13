select t1.a as t1_a, t2.a as t2_a, t2.b as t2_b, t3.b as t3_b
from table1 as t1
join table2 as t2 on table1.a = table2.a
join table3 as t3 on table2.b = table3.b
ORDER BY t1.a
;
