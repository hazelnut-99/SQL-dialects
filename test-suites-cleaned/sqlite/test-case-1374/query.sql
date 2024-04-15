SELECT a+b*2+c*3,
       abs(a),
       c,
       a+b*2+c*3+d*4,
       e,
       a,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE a IS NULL
   AND coalesce(a,b,c,d,e)<>0
   AND (c<=d-2 OR c>=d+2);
