SELECT c6 FROM t6
   WHERE (c6=480 AND 186=d6 AND 128=a6 AND 588=e6)
      OR (768=c6 OR 85=a6 OR d6=561)
UNION ALL
  SELECT b7 FROM t7
   WHERE (827=e7 AND b7=979 AND 296=d7)
EXCEPT
  SELECT d3 FROM t3
   WHERE NOT (b3 in (790,534,701)
           OR (b3=685 AND 145=e3 AND 70=a3 AND c3=963 AND 1=d3)
           OR b3 in (811,710,790,73,505,178,665,566,882,382,860))
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT ((565=d5))
UNION ALL
  SELECT c4 FROM t4
   WHERE (a4=74)
      OR (288=b4 OR 210=a4)
      OR (941=b4);
