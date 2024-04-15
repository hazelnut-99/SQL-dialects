SELECT a+b*2+c*3+d*4+e*5,
       a,
       a+b*2
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 2,1,3;
