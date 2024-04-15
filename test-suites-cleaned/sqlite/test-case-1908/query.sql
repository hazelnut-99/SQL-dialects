SELECT d-e,
       a,
       a+b*2+c*3+d*4+e*5,
       abs(a),
       b
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND c>d
   AND d NOT BETWEEN 110 AND 150;
