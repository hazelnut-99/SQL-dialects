SELECT d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       b-c,
       a+b*2+c*3+d*4
  FROM t1
 WHERE (e>c OR e<d)
   AND EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
   AND b>c;
