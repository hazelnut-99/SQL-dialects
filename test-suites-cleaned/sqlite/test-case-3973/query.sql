SELECT b-c,
       a+b*2+c*3
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
 ORDER BY 2,1;
