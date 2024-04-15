SELECT a+b*2+c*3+d*4,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       (a+b+c+d+e)/5,
       e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND b>c;
