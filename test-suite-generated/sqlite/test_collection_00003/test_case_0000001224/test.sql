SELECT c2 FROM t2
   WHERE (181=b2 AND 189=a2 AND 847=d2)
UNION ALL
  SELECT d7 FROM t7
   WHERE c7 in (389,498,954,135,180,518,659,816,364,317,906)
EXCEPT
  SELECT e5 FROM t5
   WHERE NOT ((50=c5 AND 187=e5 AND b5=744)
           OR d5 in (810,155,42,521)
           OR (104=e5 AND 570=d5 AND a5=536))
EXCEPT
  SELECT d3 FROM t3
   WHERE NOT ((e3=854 OR a3=197 OR c3=966)
           OR (b3=983 AND e3=211 AND c3=954 AND d3=809))
UNION
  SELECT a6 FROM t6
   WHERE b6 in (933,549,541,967,954)
UNION
  SELECT e4 FROM t4
   WHERE b4 in (267,707,901,603,635)
      OR b4 in (919,261,387,243,713,707)
EXCEPT
  SELECT a9 FROM t9
   WHERE NOT ((210=b9 OR d9=878)
           OR (e9=353 AND 2=b9 AND 678=d9)
           OR (e9=744 OR a9=72 OR 245=b9))
UNION
  SELECT c1 FROM t1
   WHERE (447=b1 OR d1=432)
      OR e1 in (117,539,763,838,284,139,858,355,125)
      OR (270=b1 AND c1=882);
