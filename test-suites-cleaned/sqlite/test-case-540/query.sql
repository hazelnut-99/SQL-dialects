SELECT c,
       a+b*2+c*3,
       c-d,
       abs(a),
       a+b*2+c*3+d*4+e*5
  FROM t1
 WHERE d>e
    OR (c<=d-2 OR c>=d+2)
    OR (e>c OR e<d)
 ORDER BY 1,3,5,2,4;
