SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d,
       a+b*2+c*3+d*4+e*5,
       a,
       b-c,
       c-d,
       abs(a)
  FROM t1
 WHERE c>d
    OR d>e
    OR (a>b-2 AND a<b+2)
 ORDER BY 7,1,3,2,6,5;
