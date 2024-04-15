SELECT b-c,
       a+b*2+c*3+d*4,
       c-d,
       a,
       d-e,
       c
  FROM t1
 WHERE d>e
 ORDER BY 3,4,1,5,6,2;
