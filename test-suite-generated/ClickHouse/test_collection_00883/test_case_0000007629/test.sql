select *
from table1 as t1
join table2 as t2 on t1_a = t2_a
where (table1.a as t1_a) > 4 and (table2.a as t2_a) > 2;
