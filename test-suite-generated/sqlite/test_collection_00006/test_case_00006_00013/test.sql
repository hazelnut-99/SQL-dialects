SELECT a+b*2,
       a,
       a+b*2+c*3+d*4+e*5,
       (a+b+c+d+e)/5,
       e,
       c-d,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE a>b
 ORDER BY 5,4,6,2,1,7,3;
