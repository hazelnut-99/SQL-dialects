SELECT a-b,
       a+b*2+c*3+d*4+e*5,
       a+b*2
  FROM t1
 WHERE c>d
   AND b>c
   AND (c<=d-2 OR c>=d+2);
