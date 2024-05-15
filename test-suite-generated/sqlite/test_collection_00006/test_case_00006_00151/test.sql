SELECT a+b*2+c*3+d*4,
       (a+b+c+d+e)/5,
       a,
       abs(a),
       c-d,
       c
  FROM t1
 ORDER BY 2,5,4,6,3,1;
