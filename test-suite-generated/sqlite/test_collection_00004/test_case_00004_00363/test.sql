SELECT (a+b+c+d+e)/5,
       abs(b-c),
       a+b*2+c*3+d*4
  FROM t1
 WHERE c>d
   AND c BETWEEN b-2 AND d+2
   AND d>e
 ORDER BY 1,2;
