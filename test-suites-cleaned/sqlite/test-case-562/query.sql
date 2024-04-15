SELECT d,
       d-e,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       b,
       c,
       a+b*2+c*3
  FROM t1
 WHERE a>b
    OR b>c
 ORDER BY 3,1,5,6,4,2;
