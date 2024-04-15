SELECT abs(a),
       a+b*2,
       a+b*2+c*3,
       (a+b+c+d+e)/5,
       c,
       d,
       c-d
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 1,3,2,6,5,7,4;
