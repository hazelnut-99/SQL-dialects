SELECT a+b*2+c*3,
       d,
       e,
       a+b*2+c*3+d*4
  FROM t1
 WHERE d>e
   AND c BETWEEN b-2 AND d+2
   AND (a>b-2 AND a<b+2)
 ORDER BY 2,1,3,4;
