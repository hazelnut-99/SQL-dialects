SELECT b1 FROM t1
   WHERE (c1=690 OR c1=636 OR d1=874)
UNION
  SELECT e7 FROM t7
   WHERE c7 in (284,98,498)
      OR (912=a7)
      OR e7 in (455,462,282,31,356,988,499,184,120,319,439)
EXCEPT
  SELECT d8 FROM t8
   WHERE NOT (b8 in (769,365,677,308,770,796,454,773,325,98,656,705)
           OR (210=d8 AND 386=a8 AND 463=e8 AND b8=300 AND c8=901)
           OR d8 in (525,950,482,675,845,456))
UNION
  SELECT a4 FROM t4
   WHERE a4 in (16,804,318,152,474,261,281,723,447,621,60,442)
UNION
  SELECT e5 FROM t5
   WHERE (a5=785 AND b5=951 AND e5=206 AND 514=c5 AND 818=d5)
      OR c5 in (299,927,86,545,422,130,766,101,894,747,196,598,44)
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT ((b9=912 AND a9=611 AND 737=e9))
UNION ALL
  SELECT d3 FROM t3
   WHERE (c3=40 AND a3=16 AND 487=d3 AND 28=b3)
      OR c3 in (668,467,317);
