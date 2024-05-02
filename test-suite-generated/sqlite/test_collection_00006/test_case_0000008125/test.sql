SELECT (a+b+c+d+e)/5,
       a,
       b
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 3,2,1;
