SELECT a-b,
       a+b*2+c*3
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR d NOT BETWEEN 110 AND 150
    OR d>e
 ORDER BY 1,2;
