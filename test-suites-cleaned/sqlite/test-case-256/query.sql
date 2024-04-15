SELECT abs(b-c),
       a+b*2+c*3,
       a+b*2
  FROM t1
 ORDER BY 1,3,2;
