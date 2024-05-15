SELECT b,
       abs(a),
       a,
       c
  FROM t1
 WHERE c BETWEEN b-2 AND d+2
    OR (e>c OR e<d)
    OR b>c
 ORDER BY 4,3,2,1;
