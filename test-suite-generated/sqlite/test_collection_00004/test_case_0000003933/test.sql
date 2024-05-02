SELECT a+b*2+c*3+d*4,
       d
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND (e>c OR e<d)
   AND c>d;
