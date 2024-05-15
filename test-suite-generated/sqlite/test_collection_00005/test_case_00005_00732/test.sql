SELECT c
  FROM t1
 WHERE c>d
    OR EXISTS(SELECT 1 FROM t1 AS x WHERE x.b<t1.b)
    OR (c<=d-2 OR c>=d+2);
