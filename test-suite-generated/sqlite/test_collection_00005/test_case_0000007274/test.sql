SELECT b-c,
       abs(b-c),
       a-b
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0;
