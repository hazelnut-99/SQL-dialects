SELECT b,
       a+b*2+c*3+d*4,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a,
       abs(b-c),
       abs(a)
  FROM t1
 WHERE (e>a AND e<b)
 ORDER BY 5,4,2,1,3,6;
