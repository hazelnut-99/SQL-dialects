SELECT a+b*2+c*3+d*4,
       (a+b+c+d+e)/5,
       abs(b-c),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
    OR (e>c OR e<d)
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 3,1,2,4;
