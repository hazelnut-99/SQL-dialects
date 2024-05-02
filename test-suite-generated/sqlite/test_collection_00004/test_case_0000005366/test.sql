SELECT c,
       a+b*2+c*3+d*4+e*5,
       d-e,
       (a+b+c+d+e)/5
  FROM t1
 WHERE d>e
    OR (a>b-2 AND a<b+2)
 ORDER BY 3,1,2;
