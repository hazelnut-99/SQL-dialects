SELECT a+b*2
  FROM t1
 WHERE a>b
   AND coalesce(a,b,c,d,e)<>0
   AND a IS NULL;
