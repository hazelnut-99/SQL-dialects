SELECT abs(b-c),
       b-c
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND (a>b-2 AND a<b+2)
 ORDER BY 1,2;
