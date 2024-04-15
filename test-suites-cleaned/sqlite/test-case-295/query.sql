SELECT a+b*2+c*3,
       a,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       abs(a)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR b>c
 ORDER BY 2,4,3,1;
