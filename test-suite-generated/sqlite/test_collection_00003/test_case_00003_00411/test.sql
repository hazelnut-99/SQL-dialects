SELECT b2 FROM t2
   WHERE (625=c2 AND 812=e2 AND a2=993)
INTERSECT
  SELECT a3 FROM t3
   WHERE NOT ((e3=254 AND c3=490 AND 841=d3)
           OR d3 in (607,701,220,139,495,95,423,650,825)
           OR (551=b3 AND 211=c3 AND 499=a3))
UNION
  SELECT c7 FROM t7
   WHERE d7 in (364,572,114,590,457,442,702,506,397,831,492,527,939)
      OR (a7=649 OR b7=480 OR a7=916)
      OR c7 in (648,575,280,232,103,377,725)
UNION ALL
  SELECT c8 FROM t8
   WHERE d8 in (781,439,738)
UNION
  SELECT a4 FROM t4
   WHERE (311=e4)
      OR e4 in (237,358,217,879,575,760,312,763,816,163,257,977,122,554)
      OR a4 in (151,271,152,847,981,773,637)
UNION
  SELECT e5 FROM t5
   WHERE (818=d5 AND 951=b5 AND c5=514 AND 206=e5)
      OR (b5=321 OR d5=806)
      OR (c5=422 OR d5=280 OR 442=c5)
EXCEPT
  SELECT d6 FROM t6
   WHERE NOT ((794=e6 OR 421=b6 OR b6=710));
