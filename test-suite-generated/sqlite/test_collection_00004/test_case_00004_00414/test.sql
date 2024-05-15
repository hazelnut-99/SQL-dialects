SELECT b-c,
       b
  FROM t1
 WHERE (e>a AND e<b)
    OR d>e
    OR (e>c OR e<d);
