SELECT c-d,
       a+b*2,
       d-e,
       a+b*2+c*3+d*4
  FROM t1
 WHERE b>c
   AND b IS NOT NULL
   AND (a>b-2 AND a<b+2);
