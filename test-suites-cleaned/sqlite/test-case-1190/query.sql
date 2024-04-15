SELECT c-d
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0;
