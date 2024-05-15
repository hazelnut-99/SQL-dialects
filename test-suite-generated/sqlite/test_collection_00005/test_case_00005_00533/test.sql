SELECT a+b*2+c*3+d*4,
       a-b,
       b-c,
       b,
       (a+b+c+d+e)/5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE (c<=d-2 OR c>=d+2);
