SELECT d,
       abs(b-c)
  FROM t1
 WHERE (e>c OR e<d)
   AND b>c
 ORDER BY 2,1;
