SELECT e1 FROM t1
   WHERE e1 in (695,328,89)
UNION ALL
  SELECT c4 FROM t4
   WHERE (e4=71)
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT ((670=b7 OR 884=a7)
           OR (e7=782 OR 916=d7))
EXCEPT
  SELECT c5 FROM t5
   WHERE NOT ((c5=31)
           OR (598=c5 AND 72=e5 AND d5=521 AND a5=757 AND 412=b5))
EXCEPT
  SELECT b6 FROM t6
   WHERE NOT ((b6=6));
