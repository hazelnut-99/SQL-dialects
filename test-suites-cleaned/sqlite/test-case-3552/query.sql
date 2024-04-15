SELECT b,
       b-c,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE d>e
   AND (a>b-2 AND a<b+2)
   AND (c<=d-2 OR c>=d+2);
