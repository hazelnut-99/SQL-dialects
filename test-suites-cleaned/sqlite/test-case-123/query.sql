SELECT a+b*2+c*3+d*4,
       b,
       a-b
  FROM t1
 WHERE c>d
    OR d>e
    OR b>c
 ORDER BY 3,1,2;
