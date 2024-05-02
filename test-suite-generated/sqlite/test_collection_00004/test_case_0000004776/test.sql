SELECT a+b*2+c*3,
       a+b*2,
       c,
       abs(b-c),
       e,
       b
  FROM t1
 WHERE (e>c OR e<d)
   AND b>c
   AND c BETWEEN b-2 AND d+2
 ORDER BY 4,5,1,3;
