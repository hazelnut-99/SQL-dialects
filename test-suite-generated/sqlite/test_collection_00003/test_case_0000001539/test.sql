SELECT b3 FROM t3
   WHERE (368=b3 OR 187=e3)
      OR (c3=641 AND 105=a3 AND 133=d3 AND 122=b3 AND 365=e3)
      OR (d3=983)
EXCEPT
  SELECT d9 FROM t9
   WHERE NOT ((c9=110 AND 678=d9 AND a9=584 AND 353=e9 AND 2=b9)
           OR (477=e9)
           OR (c9=739 AND a9=295 AND 575=e9))
EXCEPT
  SELECT e7 FROM t7
   WHERE NOT (b7 in (120,970,323,583,374,923,129,896,362,480,764,407,837))
EXCEPT
  SELECT d1 FROM t1
   WHERE NOT ((e1=811 AND 758=c1 AND d1=900))
EXCEPT
  SELECT b8 FROM t8
   WHERE NOT ((891=b8 AND 578=a8 AND 711=d8))
UNION ALL
  SELECT e5 FROM t5
   WHERE (e5=440)
      OR (634=d5 OR 910=d5 OR a5=917)
      OR (819=c5 AND 806=d5 AND 772=b5 AND e5=749 AND 334=a5)
EXCEPT
  SELECT e2 FROM t2
   WHERE NOT ((922=a2)
           OR b2 in (846,311,148,170,681,353)
           OR b2 in (640,38,859,628,676,811,784,776,489,326,527,714))
UNION
  SELECT e6 FROM t6
   WHERE (a6=966 AND 911=d6 AND 847=e6 AND b6=276)
      OR (740=a6 OR 274=e6)
      OR (b6=262 AND 458=d6 AND 67=e6 AND a6=33 AND 961=c6)
UNION
  SELECT c4 FROM t4
   WHERE (a4=378)
      OR b4 in (608,884,917,847,903,35,635,829,606,220);
