SELECT abs(a),
       a+b*2+c*3+d*4,
       b,
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3+d*4+e*5,
       a-b,
       e
  FROM t1
 WHERE (e>c OR e<d)
   AND e+d BETWEEN a+b-10 AND c+130
   AND c>d
 ORDER BY 5,3,1,4,2,6;
