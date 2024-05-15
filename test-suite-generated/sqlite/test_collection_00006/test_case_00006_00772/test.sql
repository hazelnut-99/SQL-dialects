SELECT d-e,
       abs(b-c),
       (a+b+c+d+e)/5
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND (e>a AND e<b)
 ORDER BY 2,3,1;
