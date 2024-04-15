SELECT c-d,
       b,
       d,
       a+b*2+c*3+d*4+e*5,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE c>d
 ORDER BY 4,3,5,6,2,1;
