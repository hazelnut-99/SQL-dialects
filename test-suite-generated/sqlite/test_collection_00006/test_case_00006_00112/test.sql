SELECT abs(a),
       d,
       e,
       a+b*2+c*3+d*4,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       b-c,
       a
  FROM t1
 WHERE (a>b-2 AND a<b+2)
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 3,2,7,6,4,1,5;
