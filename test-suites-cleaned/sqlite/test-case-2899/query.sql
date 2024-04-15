SELECT (a+b+c+d+e)/5,
       a+b*2+c*3+d*4+e*5,
       c-d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3,
       d,
       a-b
  FROM t1
 ORDER BY 3,7,4,2,1;
