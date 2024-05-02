SELECT e
  FROM t1
 WHERE a>b
    OR coalesce(a,b,c,d,e)<>0;
