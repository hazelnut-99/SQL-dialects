SELECT c3 FROM t3
   WHERE (837=e3 AND 737=d3)
UNION ALL
  SELECT c2 FROM t2
   WHERE (c2=967 AND d2=19 AND e2=118)
EXCEPT
  SELECT b5 FROM t5
   WHERE NOT ((c5=922 OR 479=d5 OR 446=e5)
           OR (d5=557 AND a5=921 AND 772=e5 AND 657=b5))
EXCEPT
  SELECT a9 FROM t9
   WHERE NOT ((a9=821 OR d9=790 OR d9=790)
           OR (665=d9 AND 687=c9 AND e9=804 AND a9=830)
           OR (e9=704 OR a9=841 OR 149=e9))
UNION
  SELECT b1 FROM t1
   WHERE (a1=382 OR e1=95)
      OR d1 in (459,973,212,254,691,294,376,412,232,798,163,492,748)
      OR (c1=690)
UNION ALL
  SELECT d6 FROM t6
   WHERE (549=b6 AND 446=d6 AND c6=35 AND e6=958 AND a6=751);
