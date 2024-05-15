SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE (e>c OR e<d)
    OR b>c
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 1,2;
