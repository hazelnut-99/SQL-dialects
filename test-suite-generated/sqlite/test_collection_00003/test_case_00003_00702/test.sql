SELECT d7 FROM t7
   WHERE c7 in (857,38,887,397,795,488,435,482,970,288,725,565,232,548)
INTERSECT
  SELECT c9 FROM t9
   WHERE NOT ((547=c9 OR 569=c9 OR a9=712)
           OR (905=c9 OR 172=a9 OR d9=360))
UNION
  SELECT d5 FROM t5
   WHERE (d5=280 OR 180=a5)
EXCEPT
  SELECT d2 FROM t2
   WHERE NOT ((784=b2 AND 283=a2 AND 900=c2)
           OR (e2=692 AND c2=202 AND d2=813 AND b2=509))
EXCEPT
  SELECT e6 FROM t6
   WHERE NOT ((31=e6)
           OR (c6=500 OR c6=84)
           OR (384=a6 AND 192=d6 AND 840=e6 AND c6=928 AND b6=92))
EXCEPT
  SELECT c8 FROM t8
   WHERE NOT (b8 in (351,102,454,696,769,155,300,386))
UNION
  SELECT a1 FROM t1
   WHERE (857=b1 AND 379=c1 AND e1=52)
      OR (c1=885 OR 208=c1 OR 12=e1)
      OR (e1=737 AND a1=363)
UNION
  SELECT b4 FROM t4
   WHERE d4 in (910,770,373,821)
      OR e4 in (151,596,763,212,792,123,677,931)
      OR (d4=522 AND 448=a4)
UNION ALL
  SELECT a3 FROM t3
   WHERE (145=e3 AND a3=34 AND 166=b3 AND 541=d3 AND c3=134)
      OR (e3=977 OR 591=a3 OR 499=a3);
