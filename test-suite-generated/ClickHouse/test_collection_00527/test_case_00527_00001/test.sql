select t1.a, t2.b, t5.c from table1 as t1 join table2 as t2 on t1.a = t2.a join table5 as t5 on t1.a = t5.a AND t2.b = t5.b ORDER BY t1.a;
