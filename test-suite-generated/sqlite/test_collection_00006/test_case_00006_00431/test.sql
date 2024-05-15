SELECT abs(a)
  FROM t1
 WHERE (e>c OR e<d)
    OR (c<=d-2 OR c>=d+2)
 ORDER BY 1;
