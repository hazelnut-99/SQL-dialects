select t1.a t1_a, t2.a
from table1 as t1
join table2 as t2 on table1.a = t2.a and t1.a = t2.a and t1_a = t2.a;
