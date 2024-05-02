SELECT a+b*2+c*3+d*4+e*5,
       d,
       a+b*2+c*3+d*4,
       c,
       d-e,
       a+b*2
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND (a>b-2 AND a<b+2)
   AND c BETWEEN b-2 AND d+2
 ORDER BY 4,6,2,5,1,3;
