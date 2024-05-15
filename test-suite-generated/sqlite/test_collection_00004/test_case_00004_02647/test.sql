SELECT abs(a),
       d-e,
       a+b*2+c*3,
       abs(b-c),
       b
  FROM t1
 WHERE c>d
    OR d NOT BETWEEN 110 AND 150
    OR d>e
 ORDER BY 1,3;
