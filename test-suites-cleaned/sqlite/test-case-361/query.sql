SELECT a+b*2+c*3,
       d,
       e,
       a+b*2+c*3+d*4+e*5,
       abs(a),
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       abs(b-c)
  FROM t1
 WHERE a>b
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 1,4,5,2,6,7,3;
