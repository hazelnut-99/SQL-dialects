SELECT a+b*2+c*3,
       a-b,
       c-d
  FROM t1
 WHERE a>b
 ORDER BY 1,3,2;
