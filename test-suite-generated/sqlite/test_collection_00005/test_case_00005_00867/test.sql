SELECT (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       e,
       a+b*2+c*3+d*4+e*5,
       a+b*2+c*3,
       a-b,
       b-c,
       d
  FROM t1
 WHERE b>c;
