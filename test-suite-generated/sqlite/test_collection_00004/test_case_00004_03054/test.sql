SELECT a+b*2+c*3+d*4+e*5,
       (a+b+c+d+e)/5,
       abs(b-c),
       abs(a),
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1;
