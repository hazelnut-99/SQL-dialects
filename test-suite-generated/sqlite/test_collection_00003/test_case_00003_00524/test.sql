SELECT a8 FROM t8
   WHERE (821=c8 OR c8=419 OR d8=814)
EXCEPT
  SELECT e1 FROM t1
   WHERE NOT (d1 in (154,806,86))
UNION ALL
  SELECT a2 FROM t2
   WHERE (a2=91 OR 244=c2)
      OR (c2=22 OR c2=179)
      OR b2 in (676,857,776,414,819,380,217,599,903,442,317,220,635,784)
UNION
  SELECT c6 FROM t6
   WHERE (225=e6 OR b6=963 OR 861=a6)
      OR c6 in (534,399,12,807,528,528)
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT (d5 in (814,24,520,691,667,413,858)
           OR (b5=860 OR 485=a5))
EXCEPT
  SELECT b9 FROM t9
   WHERE NOT ((391=c9)
           OR (c9=171 OR 907=a9)
           OR (e9=723))
UNION ALL
  SELECT e3 FROM t3
   WHERE d3 in (109,850,984,270,364,399,988,635,603,607,487)
UNION
  SELECT d4 FROM t4
   WHERE (167=b4 OR 951=e4 OR a4=598)
      OR (637=a4 AND 264=d4 AND 293=c4 AND e4=377)
      OR (d4=449 AND e4=480 AND 170=a4);
