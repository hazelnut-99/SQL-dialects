SELECT a,
       abs(a),
       d,
       (a+b+c+d+e)/5,
       c-d
  FROM t1
 WHERE d>e
   AND (e>c OR e<d)
 ORDER BY 2,1,3,5,4;
