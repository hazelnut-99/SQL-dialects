SELECT (a+b+c+d+e)/5,
       abs(b-c),
       a+b*2+c*3+d*4,
       d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d-e,
       abs(a)
  FROM t1
 WHERE a>b
    OR b>c
    OR c>d
 ORDER BY 1,4,5,2,6,7,3;
