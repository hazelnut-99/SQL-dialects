SELECT a+b*2+c*3,
       d-e,
       abs(a)
  FROM t1
 WHERE b>c
   AND c BETWEEN b-2 AND d+2;
