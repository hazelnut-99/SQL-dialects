SELECT a-b,
       a+b*2,
       a
  FROM t1
 WHERE b>c
    OR d>e
 ORDER BY 2,3,1;
