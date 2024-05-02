SELECT a+b*2+c*3,
       a+b*2+c*3+d*4+e*5,
       a+b*2+c*3+d*4,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c-d,
       (a+b+c+d+e)/5
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0;
