SELECT a-b,
       a+b*2
  FROM t1
 WHERE b>c
    OR c>d
 ORDER BY 2,1;
