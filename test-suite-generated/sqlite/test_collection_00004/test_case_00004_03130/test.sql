SELECT a+b*2+c*3+d*4,
       a-b,
       e,
       abs(a),
       c
  FROM t1
 WHERE a>b
   AND c>d
   AND d NOT BETWEEN 110 AND 150;
