SELECT e8 FROM t8
   WHERE (427=c8 AND 487=b8)
UNION ALL
  SELECT c3 FROM t3
   WHERE (a3=198)
      OR (526=e3)
UNION
  SELECT d5 FROM t5
   WHERE (183=b5 AND c5=545)
      OR (69=a5)
UNION
  SELECT e9 FROM t9
   WHERE (a9=69 OR d9=104 OR d9=808)
UNION
  SELECT d6 FROM t6
   WHERE (d6=35 OR d6=172)
      OR (197=d6)
      OR (b6=565)
UNION
  SELECT e1 FROM t1
   WHERE d1 in (936,275,863,96)
      OR (e1=125 AND 548=c1 AND a1=637 AND 404=b1)
EXCEPT
  SELECT c7 FROM t7
   WHERE NOT (d7 in (924,702,709,278,324,539,712,306,801)
           OR (d7=278)
           OR d7 in (916,831,199,418,892,108,603))
EXCEPT
  SELECT a2 FROM t2
   WHERE NOT (d2 in (153,263,398,844,60,546)
           OR a2 in (922,651,680,159,495,2,217,131,987,814,652,691,254))
UNION ALL
  SELECT c4 FROM t4
   WHERE (904=c4)
      OR (51=a4 AND b4=765 AND 794=c4 AND d4=498);
