SELECT a+b*2+c*3,
       a+b*2
  FROM t1
 WHERE a>b
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 2,1;
