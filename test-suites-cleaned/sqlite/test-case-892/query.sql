SELECT a+b*2+c*3+d*4,
       c-d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       c
  FROM t1
 WHERE c>d
 ORDER BY 1,3,4,2;
