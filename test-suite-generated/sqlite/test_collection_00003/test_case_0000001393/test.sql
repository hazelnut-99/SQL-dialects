SELECT d8 FROM t8
   WHERE (200=a8)
UNION
  SELECT e1 FROM t1
   WHERE (767=a1)
      OR a1 in (552,868,866,170,61,371,231,524,810,4,330)
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT (e9 in (383,15,353,845,291,978,61,146,445,575,368)
           OR (c9=534 AND e9=82 AND 335=a9 AND 345=d9 AND b9=170)
           OR b9 in (152,667,612,913,446,525,549,832,880,759,804,496,13,818))
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT ((b3=198 OR d3=548 OR 844=c3)
           OR b3 in (41,832,927))
UNION
  SELECT d2 FROM t2
   WHERE (a2=775)
UNION ALL
  SELECT a5 FROM t5
   WHERE (c5=598 AND 72=e5 AND b5=412 AND 757=a5 AND d5=521)
      OR (271=d5);
