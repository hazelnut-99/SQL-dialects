SELECT a2 FROM t2
   WHERE (e2=441)
INTERSECT
  SELECT d7 FROM t7
   WHERE NOT ((e7=553 OR 280=b7)
           OR (e7=827 AND 887=c7 AND a7=720)
           OR (b7=426 OR 575=d7))
UNION ALL
  SELECT d9 FROM t9
   WHERE (37=c9 AND 356=a9)
      OR (803=b9 OR a9=739 OR a9=972)
      OR (e9=301 AND 12=b9 AND 696=c9 AND 706=a9 AND d9=383)
EXCEPT
  SELECT e1 FROM t1
   WHERE NOT ((d1=319 OR d1=662))
UNION ALL
  SELECT a4 FROM t4
   WHERE (309=d4 OR 105=a4);
