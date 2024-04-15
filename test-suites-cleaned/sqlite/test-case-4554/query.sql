SELECT abs(b-c)
  FROM t1
 WHERE c>d
    OR (e>c OR e<d);
