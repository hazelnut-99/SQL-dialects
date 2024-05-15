SELECT e
  FROM t1
 WHERE (a>b-2 AND a<b+2)
    OR a>b
 ORDER BY 1;
