SELECT a+b*2+c*3+d*4+e*5,
       a+b*2+c*3
  FROM t1
 WHERE b>c
    OR c BETWEEN b-2 AND d+2
    OR (e>c OR e<d)
 ORDER BY 2,1;
