SELECT d8 FROM t8
   WHERE d8 in (899,14,767,192,472,630,269,523,756,580,108,439)
UNION ALL
  SELECT a2 FROM t2
   WHERE (c2=933 AND 177=b2 AND e2=682 AND d2=209)
      OR (b2=897)
      OR (592=b2 AND a2=594 AND e2=242 AND d2=651)
UNION
  SELECT a3 FROM t3
   WHERE (c3=887 OR c3=887)
UNION ALL
  SELECT b7 FROM t7
   WHERE (e7=900)
UNION
  SELECT b9 FROM t9
   WHERE d9 in (967,912,665,23,489,147,568,608,899,808,926,602,86)
EXCEPT
  SELECT e1 FROM t1
   WHERE NOT ((479=a1))
UNION
  SELECT a5 FROM t5
   WHERE (492=d5 OR 894=e5 OR 544=b5)
      OR (443=c5)
      OR d5 in (344,521,495)
EXCEPT
  SELECT d4 FROM t4
   WHERE NOT ((799=c4 OR e4=63))
EXCEPT
  SELECT e6 FROM t6
   WHERE NOT (e6 in (14,261,90));
