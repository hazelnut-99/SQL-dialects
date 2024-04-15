SELECT a+b*2+c*3,
       e,
       d-e
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND c BETWEEN b-2 AND d+2
   AND d>e
 ORDER BY 3,2,1;
