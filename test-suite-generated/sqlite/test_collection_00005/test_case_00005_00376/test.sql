SELECT a+b*2+c*3+d*4+e*5,
       abs(a),
       a-b,
       a+b*2,
       b,
       c-d
  FROM t1
 WHERE a>b
   AND c BETWEEN b-2 AND d+2;
