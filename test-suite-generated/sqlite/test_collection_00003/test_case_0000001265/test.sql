SELECT d9 FROM t9
   WHERE (792=e9 AND b9=832)
INTERSECT
  SELECT c1 FROM t1
   WHERE NOT (d1 in (212,47,550)
           OR (b1=828))
UNION
  SELECT c3 FROM t3
   WHERE (490=c3 AND 254=e3 AND a3=651 AND 710=b3 AND 841=d3)
      OR (850=d3 AND 159=b3 AND a3=364 AND e3=466)
UNION ALL
  SELECT e8 FROM t8
   WHERE (d8=486)
EXCEPT
  SELECT a6 FROM t6
   WHERE NOT ((e6=489 OR 355=a6)
           OR e6 in (139,682,794,241,74,286,5,554,237,95,673,816,360)
           OR (c6=615 OR b6=716 OR c6=637))
EXCEPT
  SELECT b7 FROM t7
   WHERE NOT ((a7=912 OR 154=e7))
EXCEPT
  SELECT b4 FROM t4
   WHERE NOT ((439=a4)
           OR (e4=600 OR 398=c4));
