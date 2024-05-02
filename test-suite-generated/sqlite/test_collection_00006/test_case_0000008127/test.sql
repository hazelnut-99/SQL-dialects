SELECT c,
       a-b,
       a+b*2+c*3,
       abs(b-c),
       a+b*2+c*3+d*4
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR d>e
    OR a>b
 ORDER BY 5,3,2,4,1;
