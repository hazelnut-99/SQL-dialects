SELECT a+b*2+c*3,
       d,
       b-c,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a-b
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND b>c
   AND c>d
 ORDER BY 3,5,1,4,2;
