SELECT a,
       (a+b+c+d+e)/5,
       a-b
  FROM t1
 WHERE a>b
 ORDER BY 2,3;
