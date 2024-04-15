SELECT d-e,
       (a+b+c+d+e)/5,
       a+b*2
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND a>b
 ORDER BY 3,2;
