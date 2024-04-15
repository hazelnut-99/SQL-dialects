SELECT d-e,
       c-d,
       a+b*2+c*3+d*4+e*5,
       a+b*2+c*3+d*4,
       a
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 1,2,5,3,4;
