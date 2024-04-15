SELECT a+b*2+c*3,
       abs(b-c),
       d,
       d-e
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
   AND d NOT BETWEEN 110 AND 150
   AND (e>a AND e<b)
 ORDER BY 3,1,4,2;
