SELECT b,
       a-b,
       a+b*2+c*3+d*4+e*5,
       a+b*2+c*3,
       c,
       c-d
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 5,3,4,6,1,2;
