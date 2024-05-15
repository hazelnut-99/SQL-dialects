SELECT d,
       a+b*2+c*3+d*4+e*5,
       a+b*2,
       abs(a),
       d-e
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND (a>b-2 AND a<b+2)
 ORDER BY 2,5,4,3,1;
