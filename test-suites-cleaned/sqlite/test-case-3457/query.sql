SELECT a+b*2,
       a+b*2+c*3+d*4,
       a+b*2+c*3
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND a>b
   AND c BETWEEN b-2 AND d+2
 ORDER BY 3,2,1;
