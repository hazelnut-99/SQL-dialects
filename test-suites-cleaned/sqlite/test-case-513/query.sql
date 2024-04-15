SELECT abs(b-c)
  FROM t1
 WHERE (c<=d-2 OR c>=d+2)
   AND c>d
   AND (a>b-2 AND a<b+2)
 ORDER BY 1;
