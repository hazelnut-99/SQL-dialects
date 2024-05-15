SELECT e
  FROM t1
 WHERE c>d
   AND coalesce(a,b,c,d,e)<>0
   AND a>b;
