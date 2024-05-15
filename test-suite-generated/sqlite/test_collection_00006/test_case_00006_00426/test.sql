SELECT abs(a),
       a+b*2+c*3,
       (a+b+c+d+e)/5,
       b-c
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR e+d BETWEEN a+b-10 AND c+130
 ORDER BY 1,3,2,4;
