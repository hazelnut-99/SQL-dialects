SELECT c2 FROM t2
   WHERE e2 in (114,936,696)
      OR e2 in (524,682,945,788,294,445,548,411,955)
      OR a2 in (304,1,80,691,123,735,802,159,495,927)
UNION ALL
  SELECT c8 FROM t8
   WHERE (881=e8 AND b8=564 AND a8=127 AND d8=486)
EXCEPT
  SELECT e5 FROM t5
   WHERE NOT ((a5=960 OR 730=e5)
           OR (311=e5 AND b5=759 AND d5=738 AND 293=c5)
           OR d5 in (537,369,779,916,437,521,856,114,117))
UNION
  SELECT b6 FROM t6
   WHERE a6 in (255,971,870,1,706,801,825,518,240,396)
      OR (c6=25)
      OR (147=d6 OR c6=84 OR 91=e6);
