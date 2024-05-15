SELECT b,
       a-b,
       a,
       abs(a)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
 ORDER BY 1,2,3,4;
