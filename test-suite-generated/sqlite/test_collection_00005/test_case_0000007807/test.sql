SELECT a,
       a+b*2+c*3+d*4+e*5,
       e,
       a+b*2,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(b-c)
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0;
