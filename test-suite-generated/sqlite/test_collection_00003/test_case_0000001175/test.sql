SELECT e1 FROM t1
   WHERE (b1=5 OR e1=602)
INTERSECT
  SELECT a8 FROM t8
   WHERE NOT ((96=d8)
           OR d8 in (894,542,269,651,916,715,889,849,761)
           OR b8 in (397,162,705,461,704,665,790,182,677));
