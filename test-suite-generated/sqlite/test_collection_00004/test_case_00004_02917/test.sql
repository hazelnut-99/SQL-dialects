SELECT a-b,
       a+b*2
  FROM t1
 WHERE (e>a AND e<b)
   AND c BETWEEN b-2 AND d+2
 ORDER BY 2,1;
