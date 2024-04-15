SELECT d-e,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       c,
       a+b*2+c*3,
       b,
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE b>c
 ORDER BY 1,4,6,3,5,2;
