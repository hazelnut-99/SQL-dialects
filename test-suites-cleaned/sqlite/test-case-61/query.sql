SELECT abs(a),
       c,
       CASE a+1 WHEN b THEN 111 WHEN c THEN 222
        WHEN d THEN 333  WHEN e THEN 444 ELSE 555 END,
       a+b*2,
       d-e
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND d>e
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 5,3,1,4,2;
