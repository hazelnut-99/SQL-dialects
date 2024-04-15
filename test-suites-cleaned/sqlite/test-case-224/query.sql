SELECT abs(b-c),
       a+b*2+c*3+d*4+e*5,
       a+b*2+c*3,
       e
  FROM t1
 WHERE c>d
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 2,3,4,1;
