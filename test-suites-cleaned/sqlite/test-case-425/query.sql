SELECT (a+b+c+d+e)/5,
       e,
       b
  FROM t1
 WHERE d>e
   AND (a>b-2 AND a<b+2)
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 1,3,2;
