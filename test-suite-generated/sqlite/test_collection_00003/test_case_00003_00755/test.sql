SELECT e6 FROM t6
   WHERE a6 in (818,572,62,672,615,610,585)
UNION
  SELECT c1 FROM t1
   WHERE (195=a1)
      OR a1 in (538,853,637)
UNION ALL
  SELECT d8 FROM t8
   WHERE (328=a8 AND 846=e8)
      OR d8 in (523,124,862,667,20);
