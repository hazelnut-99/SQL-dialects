SELECT b9 FROM t9
   WHERE (b9=228)
      OR b9 in (170,19,936,680,142)
      OR (d9=601 OR 515=c9)
UNION
  SELECT c3 FROM t3
   WHERE e3 in (266,578,459,192,728,120,807,876,972,605)
UNION
  SELECT a7 FROM t7
   WHERE (e7=282)
      OR (315=d7)
      OR (158=a7 AND c7=102 AND b7=506 AND 851=e7 AND d7=506)
EXCEPT
  SELECT e5 FROM t5
   WHERE NOT (b5 in (338,569,723,822,161,998,234,587,336,661)
           OR b5 in (292,26,744,729,860,661,69,321,703,951,620,605,717,846)
           OR (851=a5 AND e5=732))
UNION
  SELECT d2 FROM t2
   WHERE (575=c2 OR e2=547);
