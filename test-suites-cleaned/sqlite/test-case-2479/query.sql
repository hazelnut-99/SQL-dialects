SELECT a+b*2+c*3,
       e,
       a-b
  FROM t1
 WHERE b>c
   AND c BETWEEN b-2 AND d+2
 ORDER BY 1,3;
