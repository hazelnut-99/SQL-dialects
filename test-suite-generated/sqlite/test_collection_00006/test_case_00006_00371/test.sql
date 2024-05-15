SELECT b-c,
       a+b*2+c*3+d*4,
       c-d,
       a-b
  FROM t1
 ORDER BY 2,4,3,1;
