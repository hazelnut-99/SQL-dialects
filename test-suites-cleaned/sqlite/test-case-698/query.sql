SELECT b,
       a,
       (a+b+c+d+e)/5,
       b-c,
       e
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR a>b
 ORDER BY 3,1,2,5,4;
