SELECT a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE (e>a AND e<b)
   AND (e>c OR e<d)
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 1;
