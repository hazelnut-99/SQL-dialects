SELECT a+b*2+c*3,
       a+b*2
  FROM t1
 WHERE (c<=d-2 OR c>=d+2);
