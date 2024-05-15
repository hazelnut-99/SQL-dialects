select t1.i, t1.j as a, t2.j as b from r4 t1 inner join r4 t2 on t1.i=t2.i and t1.j=t2.j ORDER BY a;
