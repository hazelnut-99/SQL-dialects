SELECT a,
       a+b*2+c*3+d*4+e*5,
       a+b*2,
       abs(a)
  FROM t1
 WHERE (e>c OR e<d)
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 2,1,3,4;
