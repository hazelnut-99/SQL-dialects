SELECT b-c,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d,
       a+b*2+c*3+d*4+e*5,
       e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
 ORDER BY 3,5,1,2,4;
