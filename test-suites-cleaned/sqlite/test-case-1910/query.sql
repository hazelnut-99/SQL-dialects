SELECT c-d,
       e
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0;
