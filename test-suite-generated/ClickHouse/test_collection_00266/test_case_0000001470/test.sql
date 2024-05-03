select t1.a as t1_a, t2.a t2_a
from table1 as t1
join table2 as t2 on table1.a = t2_a and t1.a = t2_a and t1_a = t2_a;
