SELECT a,
       c,
       c-d,
       (a+b+c+d+e)/5,
       e,
       d
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 3,6,1,5,2,4;
