SELECT abs(b-c)
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR (e>c OR e<d)
    OR a>b;
