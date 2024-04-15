SELECT b-c,
       abs(b-c),
       a+b*2+c*3,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE a>b
 ORDER BY 3,2,1,4;
