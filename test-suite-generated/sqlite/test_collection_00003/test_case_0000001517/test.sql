SELECT a8 FROM t8
   WHERE (b8=958)
      OR e8 in (608,273,186,41,944,204,38,866)
      OR (377=c8)
UNION ALL
  SELECT d3 FROM t3
   WHERE (382=b3)
      OR (860=b3 AND 826=c3 AND 376=a3)
      OR (b3=156 OR 594=a3 OR e3=536)
EXCEPT
  SELECT e2 FROM t2
   WHERE NOT (b2 in (311,181,754,276,168)
           OR d2 in (498,860,651,844,546,448,292,682,177,14))
EXCEPT
  SELECT b9 FROM t9
   WHERE NOT ((e9=987 AND d9=681 AND 227=b9)
           OR (446=b9 AND d9=790))
UNION ALL
  SELECT b6 FROM t6
   WHERE (172=d6 OR 717=c6 OR b6=350)
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT ((222=c5 AND 335=a5 AND 343=d5))
UNION
  SELECT d1 FROM t1
   WHERE (e1=695)
      OR d1 in (75,798,349,691,416,679,25,376,581,701,585)
      OR (e1=210 AND 772=c1 AND 868=a1)
UNION ALL
  SELECT a7 FROM t7
   WHERE (d7=687)
      OR c7 in (78,557,906,333,103,180,672)
      OR d7 in (395,524,837)
EXCEPT
  SELECT c4 FROM t4
   WHERE NOT ((349=d4 AND 723=a4 AND e4=767 AND 660=b4));
