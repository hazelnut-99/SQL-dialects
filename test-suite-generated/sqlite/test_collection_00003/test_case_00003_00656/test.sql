SELECT a1 FROM t1
   WHERE e1 in (55,11,483,468,539)
      OR (a1=864 AND 75=b1)
INTERSECT
  SELECT a6 FROM t6
   WHERE NOT ((267=c6 AND b6=681 AND e6=324 AND d6=223 AND a6=270))
UNION ALL
  SELECT d4 FROM t4
   WHERE e4 in (372,397,438,592,206,29,543,81)
      OR (31=a4 AND d4=943)
      OR (a4=637 AND 293=c4 AND d4=264 AND b4=907 AND 377=e4);
