SELECT b6 FROM t6
   WHERE (e6=91)
      OR (b6=967 OR 657=a6)
UNION
  SELECT c8 FROM t8
   WHERE (a8=210 OR 374=c8 OR e8=955)
      OR b8 in (540,397,219)
EXCEPT
  SELECT c4 FROM t4
   WHERE NOT ((299=c4 AND b4=938 AND 763=e4 AND d4=943 AND 31=a4)
           OR (a4=16)
           OR a4 in (952,337,605,621,901,60))
EXCEPT
  SELECT b9 FROM t9
   WHERE NOT ((2=b9 AND 584=a9))
UNION
  SELECT d1 FROM t1
   WHERE (a1=194)
      OR (993=b1 OR 367=e1)
      OR d1 in (319,265,798,381,414,585)
UNION ALL
  SELECT b5 FROM t5
   WHERE a5 in (757,242,513,270,242,556,696,721,50)
UNION ALL
  SELECT a3 FROM t3
   WHERE d3 in (283,553,560)
      OR d3 in (399,164,524,487,522)
      OR (c3=668 OR 981=e3);
