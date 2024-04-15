SELECT d-e,
       abs(a),
       b,
       c-d,
       a+b*2+c*3,
       abs(b-c),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE (e>c OR e<d)
   AND d>e
   AND c>d
 ORDER BY 1,3,7,5,2,6,4;
