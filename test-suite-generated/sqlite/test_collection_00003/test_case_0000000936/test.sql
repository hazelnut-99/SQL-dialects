SELECT d5 FROM t5
   WHERE (a5=599)
UNION ALL
  SELECT b2 FROM t2
   WHERE (317=d2 OR d2=46)
EXCEPT
  SELECT c4 FROM t4
   WHERE NOT ((252=e4 AND 596=a4 AND d4=85 AND c4=82)
           OR d4 in (511,236,777,821,349,212,706,639,246,979,185,997))
EXCEPT
  SELECT c6 FROM t6
   WHERE NOT ((811=a6 OR c6=749 OR 718=c6)
           OR (699=b6 AND e6=738 AND 46=a6))
UNION
  SELECT b8 FROM t8
   WHERE (a8=289 OR 79=c8)
UNION
  SELECT c1 FROM t1
   WHERE (b1=808)
      OR e1 in (14,117,671);
