SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a,
       b,
       abs(a),
       a+b*2,
       c-d
  FROM t1
 WHERE b>c
 ORDER BY 1,6,5,3,4,2;
