SELECT b,
       a+b*2,
       a
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND b>c
   AND (a>b-2 AND a<b+2);
