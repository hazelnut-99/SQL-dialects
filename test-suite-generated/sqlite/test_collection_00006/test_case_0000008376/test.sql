SELECT e,
       abs(a),
       c-d,
       a,
       c,
       a+b*2+c*3+d*4+e*5,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d)
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 2,7,6,5,3,1,4;
