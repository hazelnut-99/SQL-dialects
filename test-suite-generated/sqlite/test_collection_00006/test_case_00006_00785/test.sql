SELECT d,
       (a+b+c+d+e)/5,
       d-e,
       a,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (e>a AND e<b)
   AND (c<=d-2 OR c>=d+2)
   AND a>b
 ORDER BY 5,2,1,4,3;
