SELECT b-c
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR (e>a AND e<b)
    OR coalesce(a,b,c,d,e)<>0;
