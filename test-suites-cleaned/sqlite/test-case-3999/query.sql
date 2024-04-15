SELECT c-d,
       a+b*2+c*3+d*4,
       b
  FROM t1
 WHERE EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND (e>c OR e<d)
 ORDER BY 1,3;
