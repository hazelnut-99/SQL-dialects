SELECT a+b*2+c*3,
       d-e
  FROM t1
 WHERE (e>a AND e<b)
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 1,2;
