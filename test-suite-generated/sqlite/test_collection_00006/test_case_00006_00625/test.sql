SELECT (a+b+c+d+e)/5
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND d>e
 ORDER BY 1;
