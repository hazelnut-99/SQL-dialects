SELECT abs(a),
       CASE WHEN a<b-3 THEN 111 WHEN a<=b THEN 222
        WHEN a<b+3 THEN 333 ELSE 444 END
  FROM t1
 WHERE c>d
   AND d>e
   AND (a>b-2 AND a<b+2)
 ORDER BY 2,1;
