SELECT b5 FROM t5
   WHERE (c5=657 OR a5=342 OR d5=782)
EXCEPT
  SELECT e9 FROM t9
   WHERE NOT ((a9=824 AND 688=d9 AND b9=214 AND c9=98 AND 944=e9)
           OR (d9=601)
           OR (d9=668 AND 750=e9))
UNION
  SELECT b4 FROM t4
   WHERE (b4=802)
      OR (e4=958 OR 810=b4 OR b4=579)
      OR (350=e4)
UNION ALL
  SELECT b2 FROM t2
   WHERE c2 in (966,728,676,575,83,268,810,925,421,988,123)
      OR (b2=674)
UNION ALL
  SELECT a6 FROM t6
   WHERE a6 in (66,680,801,45,568,40,300,104,474,2,799,386,355)
      OR c6 in (490,729,411,992,161,424,11,413,146,328,454)
UNION ALL
  SELECT b3 FROM t3
   WHERE e3 in (235,131,896,712,319,836,984,464,265,193,794)
      OR (393=e3)
UNION
  SELECT d8 FROM t8
   WHERE (239=a8 OR c8=544)
      OR (d8=486 AND 881=e8);
