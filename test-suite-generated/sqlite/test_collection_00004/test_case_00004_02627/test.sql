SELECT abs(b-c),
       abs(a),
       d-e,
       (a+b+c+d+e)/5,
       a
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND a>b
   AND c>d
 ORDER BY 5,1,4;
