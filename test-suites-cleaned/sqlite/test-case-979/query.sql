SELECT a+b*2+c*3+d*4
  FROM t1
 WHERE (e>c OR e<d)
   AND c BETWEEN b-2 AND d+2
 ORDER BY 1;
