SELECT d5 FROM t5
   WHERE b5 in (855,695,736,661,846,951,183,729,424,874,661)
      OR (c5=147)
      OR (143=b5)
EXCEPT
  SELECT d6 FROM t6
   WHERE NOT ((d6=393 OR b6=850)
           OR e6 in (6,622,893,585,139,67,738,439))
EXCEPT
  SELECT e4 FROM t4
   WHERE NOT ((260=b4 AND 857=a4 AND d4=657)
           OR b4 in (184,408,442,921,653,749,765,938,700)
           OR (d4=236 OR a4=968 OR e4=85))
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT ((d7=575)
           OR (460=e7 AND 816=c7 AND 391=d7))
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT ((104=d9 OR e9=860)
           OR (549=e9 AND 129=d9 AND 75=c9 AND a9=847)
           OR (136=b9))
UNION
  SELECT d3 FROM t3
   WHERE (c3=339 AND b3=454)
      OR d3 in (487,603,913,220,958,425,607,624,168,726,118,541);
