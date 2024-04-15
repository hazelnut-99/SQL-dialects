SELECT a+b*2+c*3+d*4,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d,
       e
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 3,1,2,4;
