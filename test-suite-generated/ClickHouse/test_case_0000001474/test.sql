select t1.*, t2.*
from table1 as t1
join table2 as t2 on t1_a = t2_a
where (t1.a as t1_a) > 2 and (t2.a as t2_a) > 4;
