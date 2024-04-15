SELECT a+b*2+c*3+d*4+e*5,
       c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b)
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND (c<=d-2 OR c>=d+2);
