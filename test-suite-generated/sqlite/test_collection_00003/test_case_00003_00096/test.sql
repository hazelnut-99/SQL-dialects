SELECT b4 FROM t4
   WHERE (319=b4 AND 482=d4 AND 984=c4 AND a4=105 AND e4=792)
      OR (b4=849 OR 936=c4)
      OR a4 in (919,260,845,596,367,235,185,558)
UNION
  SELECT c8 FROM t8
   WHERE (a8=54 OR 186=b8)
      OR d8 in (50,391,20,463,124,876,862,484,523,141)
      OR e8 in (792,106,38,46)
UNION ALL
  SELECT b2 FROM t2
   WHERE d2 in (749,351,80,833,555,643,813,772,351,10,577);
