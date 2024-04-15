SELECT e,
       b,
       a,
       a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b,
       (a+b+c+d+e)/5
  FROM t1
 WHERE b IS NOT NULL
   AND coalesce(a,b,c,d,e)<>0;
