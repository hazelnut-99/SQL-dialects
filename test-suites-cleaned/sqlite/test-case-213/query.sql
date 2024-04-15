SELECT c-d,
       a+b*2+c*3+d*4,
       a,
       abs(b-c),
       abs(a),
       (a+b+c+d+e)/5,
       c
  FROM t1
 ORDER BY 2,4,5,6,3,7,1;
