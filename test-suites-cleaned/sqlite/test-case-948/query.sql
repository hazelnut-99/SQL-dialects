SELECT abs(a)
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR d>e
    OR (e>c OR e<d)
 ORDER BY 1;
