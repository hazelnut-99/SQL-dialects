SELECT abs(b-c),
       d-e,
       a+b*2+c*3+d*4,
       (a+b+c+d+e)/5
  FROM t1
 WHERE a>b
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 1,3,4,2;
