SELECT d7 FROM t7
   WHERE (722=d7 OR 596=c7)
      OR (291=e7 AND c7=626 AND b7=374 AND d7=148 AND 542=a7)
      OR (a7=622 OR c7=441 OR e7=408)
EXCEPT
  SELECT c2 FROM t2
   WHERE NOT (d2 in (365,23,836,345,362,760,813,79,367,216,126,833,844,177)
           OR b2 in (779,628,799,173,351,418,784,599,311)
           OR (936=e2 OR e2=366 OR a2=442))
UNION ALL
  SELECT d3 FROM t3
   WHERE (e3=467 OR 425=e3)
      OR d3 in (238,967,501,582,650,231,895,170,782,429,554,17)
      OR b3 in (837,146,411)
UNION
  SELECT c6 FROM t6
   WHERE (276=b6 AND e6=847 AND a6=966)
UNION
  SELECT d4 FROM t4
   WHERE (728=c4)
      OR (264=d4)
EXCEPT
  SELECT c8 FROM t8
   WHERE NOT (e8 in (548,944,221,533,942)
           OR (46=a8 OR 944=e8))
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT ((625=c5 AND b5=771 AND a5=821 AND d5=810 AND e5=184)
           OR (555=d5 AND a5=330 AND b5=860 AND c5=437 AND e5=899))
EXCEPT
  SELECT b1 FROM t1
   WHERE NOT ((d1=130 AND 707=a1 AND 880=c1)
           OR (337=a1 OR 534=e1 OR a1=643)
           OR b1 in (446,995,259,355,414,593,942,211,645))
UNION
  SELECT c9 FROM t9
   WHERE e9 in (445,195,995,965)
      OR (368=e9 OR d9=732);
