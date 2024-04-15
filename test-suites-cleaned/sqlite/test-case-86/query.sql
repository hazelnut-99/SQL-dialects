SELECT a+b*2,
       a+b*2+c*3+d*4+e*5,
       a-b,
       abs(b-c),
       c,
       b,
       e
  FROM t1
 WHERE d>e
 ORDER BY 4,5,3,6,2,1,7;
