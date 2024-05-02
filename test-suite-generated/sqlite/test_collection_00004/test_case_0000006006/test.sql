SELECT abs(a),
       d,
       a+b*2+c*3,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       c
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND c>d
   AND a>b
 ORDER BY 3,5,1,2,4;
