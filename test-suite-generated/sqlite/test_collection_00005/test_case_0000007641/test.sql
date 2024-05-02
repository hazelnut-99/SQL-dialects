SELECT a+b*2+c*3+d*4
  FROM t1
 WHERE (e>c OR e<d)
   AND (a>b-2 AND a<b+2);
