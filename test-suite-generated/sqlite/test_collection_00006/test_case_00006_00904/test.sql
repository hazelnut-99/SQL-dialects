SELECT d-e,
       b,
       abs(b-c),
       c,
       a+b*2+c*3,
       a+b*2+c*3+d*4,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE e+d BETWEEN a+b-10 AND c+130
 ORDER BY 4,6,7,2,5,3,1;
