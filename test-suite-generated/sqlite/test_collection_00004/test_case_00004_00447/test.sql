SELECT (a+b+c+d+e)/5,
       a+b*2+c*3+d*4+e*5,
       abs(a),
       b-c,
       c,
       a-b,
       CASE WHEN c>(SELECT avg(c) FROM t1) THEN a*2 ELSE b*10 END
  FROM t1
 WHERE (e>c OR e<d)
 ORDER BY 4,3,5,1,2,7,6;
