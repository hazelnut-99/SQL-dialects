SELECT b,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       abs(b-c),
       a+b*2+c*3
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR coalesce(a,b,c,d,e)<>0;
