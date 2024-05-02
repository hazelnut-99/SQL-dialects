SELECT abs(b-c)
  FROM t1
 WHERE a>b
    OR (e>c OR e<d)
    OR d NOT BETWEEN 110 AND 150
 ORDER BY 1;
