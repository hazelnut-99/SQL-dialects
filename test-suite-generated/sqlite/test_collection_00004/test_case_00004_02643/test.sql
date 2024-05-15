SELECT abs(a),
       d-e,
       a+b*2+c*3,
       abs(b-c),
       b
  FROM t1
 WHERE d>e
    OR d NOT BETWEEN 110 AND 150
    OR c>d
 ORDER BY 4,1,5;
