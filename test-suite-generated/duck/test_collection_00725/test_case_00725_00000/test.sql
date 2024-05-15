select t1.i, t1.j as a, t2.j as b from r4 t1 inner join r4 t2 using(i,j) ORDER BY a;
