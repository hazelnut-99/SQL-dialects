SELECT a+b*2+c*3+d*4+e*5,
       abs(a),
       c,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       d
  FROM t1
 WHERE coalesce(a,b,c,d,e)<>0
    OR (c<=d-2 OR c>=d+2);
