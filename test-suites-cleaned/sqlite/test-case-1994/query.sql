SELECT abs(b-c)
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
   AND b IS NOT NULL;
