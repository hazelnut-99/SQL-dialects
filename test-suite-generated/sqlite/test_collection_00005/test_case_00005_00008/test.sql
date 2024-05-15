SELECT c,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d-e,
       c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       a+b*2+c*3+d*4+e*5,
       abs(a)
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND coalesce(a,b,c,d,e)<>0
   AND c>d;
