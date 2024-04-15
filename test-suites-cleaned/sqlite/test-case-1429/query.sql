SELECT a,
       c-d,
       b,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE a>b
   AND (c<=d-2 OR c>=d+2)
   AND b>c;
