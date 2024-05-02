SELECT c,
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END,
       abs(a),
       (a+b+c+d+e)/5,
       a+b*2,
       d-e
  FROM t1
 WHERE b>c
   AND (a>b-2 AND a<b+2)
   AND d NOT BETWEEN 110 AND 150
 ORDER BY 4,5,3,1,2,6;
