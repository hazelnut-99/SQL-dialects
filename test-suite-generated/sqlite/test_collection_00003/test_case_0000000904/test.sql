SELECT c1 FROM t1
   WHERE (d1=274)
      OR e1 in (158,779,181,146,522,166,95)
UNION
  SELECT b8 FROM t8
   WHERE d8 in (108,833,330)
      OR (894=a8)
UNION ALL
  SELECT a2 FROM t2
   WHERE (117=e2 OR 225=d2 OR 574=a2)
UNION
  SELECT d9 FROM t9
   WHERE (122=b9)
      OR d9 in (495,553,821,660,922,646,166,226)
      OR e9 in (854,954,383,30)
UNION
  SELECT b4 FROM t4
   WHERE (e4=512 AND 713=b4 AND c4=398)
      OR (40=b4 OR e4=273 OR e4=438)
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT ((c3=81)
           OR (181=a3 AND 708=d3 AND 577=b3))
UNION
  SELECT a7 FROM t7
   WHERE (e7=979 AND 177=d7 AND 869=a7 AND c7=523 AND 868=b7)
      OR (158=a7 OR 750=b7)
EXCEPT
  SELECT a6 FROM t6
   WHERE NOT (e6 in (5,654,67,816,6,511,241,24,417,139)
           OR a6 in (392,818,811,787,518,355)
           OR b6 in (875,650,507,834,662));
