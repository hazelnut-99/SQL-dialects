SELECT a-b,
       c-d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       (a+b+c+d+e)/5,
       a+b*2+c*3+d*4+e*5,
       b,
       abs(b-c)
  FROM t1
 WHERE b>c
 ORDER BY 5,2,1,7,3,4,6;
