SELECT c6 FROM t6
   WHERE (c6=242 AND a6=564 AND 2=d6 AND e6=100 AND 974=b6)
      OR (250=b6)
      OR (351=b6 OR 416=c6)
UNION ALL
  SELECT b2 FROM t2
   WHERE (806=d2 AND 168=b2 AND a2=769)
UNION ALL
  SELECT c7 FROM t7
   WHERE (b7=913 OR 67=e7 OR c7=705)
      OR (d7=196)
UNION
  SELECT c1 FROM t1
   WHERE b1 in (60,944,48,213,295,88,569,993,233,297,259,645)
      OR (492=d1)
EXCEPT
  SELECT d4 FROM t4
   WHERE NOT ((c4=483))
UNION ALL
  SELECT b5 FROM t5
   WHERE d5 in (565,276,919,856,772,132,858,977,810,542,321)
      OR e5 in (589,758,937)
EXCEPT
  SELECT d9 FROM t9
   WHERE NOT (c9 in (569,662,370)
           OR (64=c9 OR 613=c9 OR c9=884))
UNION ALL
  SELECT b8 FROM t8
   WHERE b8 in (182,461,806)
      OR d8 in (580,525,630,269,197,141,366,192);
