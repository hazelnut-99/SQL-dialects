SELECT abs(a),
       c-d
  FROM t1
 WHERE d>e
    OR b>c
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 2,1;
