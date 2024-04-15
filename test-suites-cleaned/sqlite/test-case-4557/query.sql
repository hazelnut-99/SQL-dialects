SELECT abs(b-c)
  FROM t1
 WHERE (e>c OR e<d)
    OR c>d
 ORDER BY 1;
