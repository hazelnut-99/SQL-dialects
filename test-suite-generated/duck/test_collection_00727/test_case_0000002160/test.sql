select t1.*, t2.j b from r4 t1 inner join r4 t2 using(i,j) ORDER BY t1.j;
