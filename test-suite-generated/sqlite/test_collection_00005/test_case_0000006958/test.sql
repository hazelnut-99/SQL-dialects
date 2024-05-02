SELECT d,
       c-d,
       e
  FROM t1
 WHERE d NOT BETWEEN 110 AND 150
    OR (e>a AND e<b)
    OR a IS NULL;
