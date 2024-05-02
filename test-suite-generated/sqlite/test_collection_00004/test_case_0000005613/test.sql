SELECT abs(b-c)
  FROM t1
 WHERE (e>a AND e<b)
    OR c BETWEEN b-2 AND d+2;
