SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       e,
       abs(b-c)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND b>c
   AND (e>c OR e<d);
