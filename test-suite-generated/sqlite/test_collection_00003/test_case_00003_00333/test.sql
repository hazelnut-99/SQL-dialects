SELECT d6 FROM t6
   WHERE c6 in (677,620,528)
      OR c6 in (910,729,864,123)
      OR (d6=974)
EXCEPT
  SELECT a9 FROM t9
   WHERE NOT (c9 in (884,39,936,534,64,975,793,98)
           OR b9 in (818,118,63,289,228,142,122,703,214,751,456,680,524,789)
           OR (495=d9 AND 619=e9 AND 402=c9))
EXCEPT
  SELECT b7 FROM t7
   WHERE NOT ((712=d7 AND a7=120 AND c7=565 AND e7=120 AND b7=455))
UNION ALL
  SELECT d8 FROM t8
   WHERE (474=a8 OR d8=439 OR 563=c8)
      OR (394=b8 AND 113=a8 AND e8=729)
      OR (579=e8)
EXCEPT
  SELECT e3 FROM t3
   WHERE NOT ((647=c3 AND 779=b3 AND d3=81)
           OR c3 in (601,455,317)
           OR (890=c3 OR e3=896));
