SELECT b-c,
       b
  FROM t1
 WHERE (e>c OR e<d)
    OR d>e
    OR (e>a AND e<b);
