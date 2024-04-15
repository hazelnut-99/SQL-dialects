SELECT b-c,
       abs(a)
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
    OR (e>a AND e<b);
