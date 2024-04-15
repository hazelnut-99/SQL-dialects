SELECT (a+b+c+d+e)/5,
       abs(b-c)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND b>c
   AND d>e
 ORDER BY 1,2;
