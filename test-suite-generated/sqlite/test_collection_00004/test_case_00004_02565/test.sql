SELECT (a+b+c+d+e)/5,
       b,
       b-c
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND (a>b-2 AND a<b+2)
   AND c BETWEEN b-2 AND d+2
 ORDER BY 2,1,3;
