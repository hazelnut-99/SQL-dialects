SELECT e8 FROM t8
   WHERE (e8=310 AND b8=155)
      OR a8 in (15,883,54,661,963,90,184,795,150,957,312,306)
EXCEPT
  SELECT e2 FROM t2
   WHERE NOT (e2 in (659,781,217,411,115,945,535,564,213,427,483))
UNION
  SELECT c5 FROM t5
   WHERE (495=b5 OR 634=c5)
      OR c5 in (18,442,147,978,351,894,602,18,31,551,545,27)
EXCEPT
  SELECT b9 FROM t9
   WHERE NOT ((239=e9))
UNION
  SELECT a6 FROM t6
   WHERE (0=b6 AND 271=d6 AND a6=740 AND 574=e6 AND 11=c6)
      OR b6 in (923,962,834,390,850,452,710,6,954,541,601,158,512,126)
      OR (808=e6)
UNION
  SELECT c4 FROM t4
   WHERE a4 in (439,228,442,950,223,509,469,606);
