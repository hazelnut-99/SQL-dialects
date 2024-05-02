SELECT b-c,
       a+b*2,
       (a+b+c+d+e)/5,
       a
  FROM t1
 WHERE a>b
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND d NOT BETWEEN 110 AND 150;
