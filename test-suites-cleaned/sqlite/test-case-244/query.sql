SELECT a+b*2+c*3+d*4+e*5,
       abs(b-c),
       a,
       abs(a),
       b,
       a+b*2
  FROM t1
 WHERE a>b
    OR (a>b-2 AND a<b+2)
 ORDER BY 1,6,3,5,4,2;
