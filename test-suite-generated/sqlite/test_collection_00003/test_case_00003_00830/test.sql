SELECT b8 FROM t8
   WHERE (14=e8 OR 653=a8)
UNION ALL
  SELECT d3 FROM t3
   WHERE (e3=135 OR 641=c3)
EXCEPT
  SELECT c1 FROM t1
   WHERE NOT (c1 in (168,880,498)
           OR a1 in (281,231,742,76,767,499,607))
EXCEPT
  SELECT b6 FROM t6
   WHERE NOT ((787=a6 OR d6=463))
UNION
  SELECT a9 FROM t9
   WHERE (16=b9 AND a9=683 AND c9=863 AND 591=d9)
      OR (e9=353 OR 495=d9)
      OR d9 in (161,495,420,95,720,909,388,597,389,662,55)
UNION
  SELECT b7 FROM t7
   WHERE a7 in (87,62,757,439,982,11,97,748,916,430,120,490,452,703)
      OR (e7=344 AND b7=191)
      OR (832=a7 AND 455=e7 AND 547=d7 AND c7=206 AND b7=105);
