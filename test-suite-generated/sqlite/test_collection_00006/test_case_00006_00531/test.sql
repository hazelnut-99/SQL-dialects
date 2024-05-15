SELECT c-d,
       abs(a),
       (SELECT count(*) FROM t1 AS x WHERE x.c>t1.c AND x.d<t1.d),
       a+b*2+c*3+d*4,
       d
  FROM t1
 WHERE c>d
   AND (e>c OR e<d)
 ORDER BY 3,1,4,5,2;
