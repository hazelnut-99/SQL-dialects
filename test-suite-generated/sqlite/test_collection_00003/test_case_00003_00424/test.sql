SELECT d1 FROM t1
   WHERE (a1=213 AND 645=e1 AND b1=619 AND 837=d1 AND c1=680)
      OR (e1=463 OR d1=481)
UNION
  SELECT c5 FROM t5
   WHERE (b5=79 OR e5=640)
      OR (d5=738 AND 759=b5 AND 311=e5 AND 293=c5)
EXCEPT
  SELECT a8 FROM t8
   WHERE NOT (a8 in (5,826,586,239,250,417,794)
           OR (675=d8 AND e8=497 AND 46=a8)
           OR (b8=803 OR 422=e8))
UNION ALL
  SELECT d6 FROM t6
   WHERE (a6=238)
      OR (b6=449 OR a6=706 OR 24=e6)
      OR (d6=750 AND b6=662 AND 121=a6 AND 491=c6)
UNION
  SELECT c9 FROM t9
   WHERE (606=d9 AND 197=e9);
