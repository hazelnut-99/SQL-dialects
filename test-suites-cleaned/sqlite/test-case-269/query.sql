SELECT (a+b+c+d+e)/5,
       c
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 1,2;
