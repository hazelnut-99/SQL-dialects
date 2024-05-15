SELECT a+b*2+c*3
  FROM t1
 WHERE b>c
    OR a>b
    OR (e>a AND e<b)
 ORDER BY 1;
