select t1.a as t1_a, t2.a as t2_a, t2.b as t2_b, t3.b as t3_b,
    (t1.a + table2.b) as t1_t2_x, (table1.a + table3.b) as t1_t3_x, (t2.b + t3.b) as t2_t3_x
from table1 as t1
join table2 as t2 on t1_a = t2_a
join table3 as t3 on t2_b = t3_b
ORDER BY t1.a
;
