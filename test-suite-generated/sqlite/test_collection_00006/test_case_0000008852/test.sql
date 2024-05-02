SELECT (a+b+c+d+e)/5,
       d-e
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
 ORDER BY 2,1;
