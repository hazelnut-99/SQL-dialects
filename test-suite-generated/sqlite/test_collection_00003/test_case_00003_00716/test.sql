SELECT e7 FROM t7
   WHERE (944=c7 AND 813=b7 AND 903=e7 AND 649=a7 AND d7=765)
      OR c7 in (635,92,232,341,648,688,725,419,174,364,565,585,102,906)
      OR (d7=226)
INTERSECT
  SELECT e1 FROM t1
   WHERE NOT (a1 in (637,281,829,161,380,338)
           OR d1 in (701,666,679,922,335,394,902,221))
EXCEPT
  SELECT b3 FROM t3
   WHERE NOT ((c3=305 OR 520=d3 OR 763=a3)
           OR a3 in (490,190,197,784,162,549,947,651,282,591,532,644)
           OR e3 in (232,836,846,239))
UNION
  SELECT d2 FROM t2
   WHERE e2 in (815,547,820,572,117,162,706,938,812)
      OR (548=e2 AND 864=b2 AND a2=853 AND c2=182)
      OR a2 in (245,235,223,898,304,966,471,927);
