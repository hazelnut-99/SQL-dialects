SELECT abs(a),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END,
       c-d,
       b-c,
       b,
       (a+b+c+d+e)/5
  FROM t1
 WHERE b>c
   AND c BETWEEN b-2 AND d+2
 ORDER BY 4,2,5,6,1,3;
