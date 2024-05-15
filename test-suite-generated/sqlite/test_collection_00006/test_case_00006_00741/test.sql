SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3,
       c,
       d-e,
       a+b*2+c*3+d*4+e*5,
       d,
       a-b
  FROM t1
 ORDER BY 3,1,7,6,4,2,5;
