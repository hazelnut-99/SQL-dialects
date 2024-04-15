SELECT c-d,
       a+b*2+c*3+d*4+e*5,
       b,
       d
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND b IS NOT NULL;
