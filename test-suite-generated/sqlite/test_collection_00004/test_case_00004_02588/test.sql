SELECT a+b*2+c*3+d*4+e*5,
       e,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       c-d,
       a-b
  FROM t1
 WHERE c>d
   AND b>c;
