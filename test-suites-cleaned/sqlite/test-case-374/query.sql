SELECT b,
       b-c,
       a+b*2+c*3,
       abs(a),
       c-d,
       a,
       d-e
  FROM t1
 WHERE b>c
 ORDER BY 4,6,1,3,7,2,5;
