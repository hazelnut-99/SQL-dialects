SELECT abs(b-c)
  FROM t1
 WHERE a>b
    OR d NOT BETWEEN 110 AND 150
    OR (e>c OR e<d);
