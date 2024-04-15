SELECT a+b*2,
       abs(a),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       a+b*2+c*3+d*4,
       b-c,
       b
  FROM t1
 ORDER BY 6,3,5,2,1;
