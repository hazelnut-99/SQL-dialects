SELECT a-b,
       a+b*2
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND (e>a AND e<b)
 ORDER BY 2,1;
