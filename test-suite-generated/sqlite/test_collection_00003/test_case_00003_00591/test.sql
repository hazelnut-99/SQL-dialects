SELECT c2 FROM t2
   WHERE d2 in (860,310,914)
EXCEPT
  SELECT e9 FROM t9
   WHERE NOT ((a9=847 AND c9=884 AND e9=149 AND b9=525))
EXCEPT
  SELECT b5 FROM t5
   WHERE NOT (c5 in (86,158,579,602,50,31,818,12,978,185,696,678)
           OR (185=c5))
EXCEPT
  SELECT b1 FROM t1
   WHERE NOT (e1 in (667,78,12,811,858,436,255,95,504,312,731,693,298,210)
           OR a1 in (880,179,552,161)
           OR (e1=838));
