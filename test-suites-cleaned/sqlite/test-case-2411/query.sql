SELECT b-c,
       b
  FROM t1
 WHERE (e>c OR e<d)
    OR (e>a AND e<b)
    OR d>e
 ORDER BY 1,2;
