SELECT c-d,
       (SELECT count(*) FROM t1 AS x WHERE x.b<t1.b),
       b-c,
       (a+b+c+d+e)/5,
       abs(b-c),
       a+b*2+c*3,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND (e>c OR e<d)
   AND (c<=d-2 OR c>=d+2)
 ORDER BY 6,7,2,1,3,4,5;
