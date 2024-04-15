SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       c-d,
       c
  FROM t1
 WHERE a>b
   AND (e>c OR e<d)
   AND (c<=d-2 OR c>=d+2);
