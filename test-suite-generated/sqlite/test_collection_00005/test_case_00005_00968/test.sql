SELECT a+b*2+c*3
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND a IS NULL
   AND coalesce(a,b,c,d,e)<>0;
