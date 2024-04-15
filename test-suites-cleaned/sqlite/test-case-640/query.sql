SELECT a,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4
  FROM t1
 WHERE c>d
   AND (c<=d-2 OR c>=d+2)
   AND (e>c OR e<d)
 ORDER BY 3,2,1;
