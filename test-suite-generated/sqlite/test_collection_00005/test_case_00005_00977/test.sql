SELECT CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       abs(a),
       a+b*2+c*3
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0;
