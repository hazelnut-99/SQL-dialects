SELECT c-d,
       c,
       abs(a),
       a+b*2+c*3
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
   AND (e>c OR e<d)
 ORDER BY 1,4,2,3;
