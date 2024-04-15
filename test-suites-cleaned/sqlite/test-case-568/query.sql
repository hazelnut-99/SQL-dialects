SELECT a+b*2,
       a+b*2+c*3+d*4,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       b,
       c-d,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE (e>c OR e<d)
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
 ORDER BY 3,5,2,1,4,6;
