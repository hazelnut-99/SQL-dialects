SELECT abs(a),
       a-b
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
   AND c BETWEEN b-2 AND d+2
   AND (e>a AND e<b)
 ORDER BY 1,2;
