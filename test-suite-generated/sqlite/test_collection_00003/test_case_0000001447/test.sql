SELECT a1 FROM t1
   WHERE (278=b1 OR 442=e1)
      OR (a1=352 AND 523=b1 AND 816=e1 AND 458=c1 AND d1=87)
      OR (265=d1 OR 625=e1)
INTERSECT
  SELECT c6 FROM t6
   WHERE NOT ((b6=699 AND 286=d6)
           OR (12=c6 AND 974=d6))
UNION ALL
  SELECT e2 FROM t2
   WHERE d2 in (704,651,233,803,516,749,886,953,14)
      OR d2 in (80,682,454,86,345,651,86,46,931,158,621,847,577)
      OR (373=d2 AND c2=65 AND 519=b2 AND 205=e2)
UNION ALL
  SELECT e8 FROM t8
   WHERE (351=b8 AND 966=e8 AND 923=a8 AND d8=623)
EXCEPT
  SELECT c3 FROM t3
   WHERE NOT (c3 in (826,601,178,900,823,317,243,516,122,697,372,986,486))
EXCEPT
  SELECT c4 FROM t4
   WHERE NOT ((678=b4 OR 390=e4)
           OR c4 in (0,417,840,725,398,88,44))
EXCEPT
  SELECT d9 FROM t9
   WHERE NOT ((487=c9 AND 326=b9 AND 258=a9)
           OR (e9=799 AND c9=767 AND 474=a9));
