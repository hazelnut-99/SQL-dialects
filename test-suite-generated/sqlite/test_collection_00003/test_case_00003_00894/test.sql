SELECT e1 FROM t1
   WHERE a1 in (702,584,607,479,330,445,513,678,406,314,880,953,75,268)
      OR d1 in (213,55,992,922,619,972,654,130,88,141,679,761)
      OR (b1=579 AND 818=d1 AND 328=e1 AND 145=a1 AND 230=c1)
UNION
  SELECT d2 FROM t2
   WHERE (463=e2 OR 275=b2 OR e2=140)
UNION
  SELECT a9 FROM t9
   WHERE (56=a9)
UNION ALL
  SELECT a6 FROM t6
   WHERE a6 in (469,963,2,706,222,148,355,851,725,522,643,653,801)
      OR (489=d6 AND c6=729 AND a6=537 AND b6=984)
UNION
  SELECT b4 FROM t4
   WHERE (e4=188 AND c4=536 AND 502=a4 AND 563=b4)
EXCEPT
  SELECT c8 FROM t8
   WHERE NOT ((a8=774 AND 366=d8 AND 442=e8 AND 230=c8 AND b8=365)
           OR d8 in (880,542,81,811,889,330,523,945,179)
           OR (b8=906 AND a8=184))
UNION ALL
  SELECT e5 FROM t5
   WHERE d5 in (805,555,787,745,769)
      OR (e5=271 AND d5=811)
      OR b5 in (159,26,860,320,971,292,495,33,855,554)
UNION
  SELECT d3 FROM t3
   WHERE (788=b3 OR d3=283)
      OR (647=d3 OR 602=e3 OR 581=a3);
