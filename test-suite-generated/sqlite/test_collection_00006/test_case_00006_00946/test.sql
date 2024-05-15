SELECT e
  FROM t1
 WHERE (e>c OR e<d)
    OR (c<=d-2 OR c>=d+2)
    OR (e>a AND e<b)
 ORDER BY 1;
