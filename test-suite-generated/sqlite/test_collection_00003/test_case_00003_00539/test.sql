SELECT d6 FROM t6
   WHERE (e6=622 OR e6=237 OR 441=c6)
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT ((b9=549 OR 218=a9 OR c9=188))
UNION ALL
  SELECT b1 FROM t1
   WHERE c1 in (230,639,246,12,387,346,852,417,15,966,62,207)
      OR c1 in (343,636,15,620,388,200,629,97,259,458,289,486)
EXCEPT
  SELECT a2 FROM t2
   WHERE NOT ((1=a2)
           OR e2 in (463,629,777))
EXCEPT
  SELECT a5 FROM t5
   WHERE NOT (d5 in (219,480,780,271,565,520,682,685,255)
           OR (b5=56 AND 274=d5 AND 601=c5 AND 817=a5)
           OR (296=a5 AND 198=c5))
UNION ALL
  SELECT d4 FROM t4
   WHERE a4 in (792,746,151,651,509,105,474,580)
EXCEPT
  SELECT b7 FROM t7
   WHERE NOT (c7 in (376,682,954,564,626,280));
