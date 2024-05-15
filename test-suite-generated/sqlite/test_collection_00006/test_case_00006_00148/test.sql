SELECT (a+b+c+d+e)/5,
       abs(b-c),
       c,
       a+b*2+c*3+d*4+e*5,
       abs(a),
       e
  FROM t1
 WHERE b>c
   AND d>e
 ORDER BY 4,5,6,3,2,1;
