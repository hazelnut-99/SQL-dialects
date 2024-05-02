SELECT b-c,
       a+b*2+c*3+d*4+e*5,
       d
  FROM t1
 WHERE a>b
   AND (a>b-2 AND a<b+2)
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 3,2,1;
