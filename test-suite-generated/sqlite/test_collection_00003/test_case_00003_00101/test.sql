SELECT e3 FROM t3
   WHERE a3 in (965,184,594,548,282,560,429,637,181,135,145,379)
      OR (b3=827)
UNION
  SELECT b8 FROM t8
   WHERE (260=c8 AND 64=e8 AND 15=a8)
      OR (d8=512 OR 77=c8 OR 841=a8)
      OR (254=a8 AND b8=964 AND d8=48 AND e8=149 AND 692=c8)
EXCEPT
  SELECT b1 FROM t1
   WHERE NOT ((d1=661 OR 872=e1 OR a1=498)
           OR (b1=278 AND a1=358 AND c1=343))
EXCEPT
  SELECT d5 FROM t5
   WHERE NOT (c5 in (101,599,855)
           OR (514=a5)
           OR (b5=629 OR d5=269 OR a5=69))
EXCEPT
  SELECT e9 FROM t9
   WHERE NOT (e9 in (723,477,657)
           OR (a9=511 AND e9=477 AND c9=349 AND 549=d9 AND b9=423)
           OR (a9=660 OR d9=25))
EXCEPT
  SELECT a6 FROM t6
   WHERE NOT ((12=c6 AND 469=d6 AND 452=b6)
           OR (a6=585 OR 750=d6 OR 840=e6))
UNION ALL
  SELECT e4 FROM t4
   WHERE a4 in (605,318,74,473,261)
      OR (327=a4 OR 840=c4)
UNION ALL
  SELECT b2 FROM t2
   WHERE (a2=680)
      OR (a2=442);
