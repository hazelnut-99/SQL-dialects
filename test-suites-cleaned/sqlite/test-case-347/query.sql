SELECT a,
       a+b*2+c*3+d*4+e*5,
       c-d
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND (e>a AND e<b)
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 3,2,1;
