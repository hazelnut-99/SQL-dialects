SELECT c5 FROM t5
   WHERE b5 in (759,179,26,230,424)
UNION ALL
  SELECT e1 FROM t1
   WHERE (e1=815 OR d1=234 OR 349=d1)
UNION
  SELECT a8 FROM t8
   WHERE c8 in (77,521,683,32,648)
      OR (b8=98 AND 563=c8 AND e8=485)
      OR (e8=149 AND 254=a8)
EXCEPT
  SELECT a4 FROM t4
   WHERE NOT ((a4=243 AND e4=123 AND 402=b4 AND 723=c4 AND 680=d4)
           OR (c4=215 AND 236=e4 AND 925=b4))
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT ((134=a7 AND d7=442))
UNION ALL
  SELECT b6 FROM t6
   WHERE (25=c6 AND e6=503 AND d6=729 AND a6=531)
      OR (62=a6)
      OR b6 in (601,0,44,144,300)
UNION ALL
  SELECT a9 FROM t9
   WHERE (936=b9 OR 819=b9 OR b9=251)
      OR b9 in (751,804,549,128,855,612,524,214)
      OR (326=b9 OR d9=258)
EXCEPT
  SELECT b3 FROM t3
   WHERE NOT ((169=e3 AND 727=a3 AND 102=c3 AND 595=b3 AND d3=642)
           OR b3 in (368,874,434,914,122,321,932,273,592))
EXCEPT
  SELECT d2 FROM t2
   WHERE NOT ((e2=781 OR 220=e2 OR e2=441));
