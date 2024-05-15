SELECT (a+b+c+d+e)/5,
       d-e,
       d
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND d>e;
