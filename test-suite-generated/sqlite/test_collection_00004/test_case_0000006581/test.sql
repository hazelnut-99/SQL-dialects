SELECT a+b*2,
       abs(b-c)
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND (e>a AND e<b)
   AND c>d;
