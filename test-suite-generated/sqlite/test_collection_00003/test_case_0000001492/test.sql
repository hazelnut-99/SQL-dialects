SELECT c7 FROM t7
   WHERE (529=c7)
UNION ALL
  SELECT e5 FROM t5
   WHERE a5 in (319,24,540,342,270,929,132,319,544,513,921)
      OR (480=d5 AND c5=187)
      OR (69=a5)
EXCEPT
  SELECT d6 FROM t6
   WHERE NOT ((e6=154 AND 255=a6 AND 674=d6 AND b6=541 AND 975=c6)
           OR b6 in (575,6,223,699,905,262,825,296,226,63,348)
           OR e6 in (737,654,230))
EXCEPT
  SELECT d8 FROM t8
   WHERE NOT ((d8=623 OR a8=200)
           OR (b8=162)
           OR (c8=61))
UNION ALL
  SELECT e1 FROM t1
   WHERE (813=e1 AND a1=898 AND 319=d1 AND b1=556)
UNION ALL
  SELECT e3 FROM t3
   WHERE (386=b3 OR 38=d3 OR 889=d3)
      OR (c3=584 OR c3=970 OR c3=86)
      OR (e3=275 OR 596=e3);
