SELECT c5 FROM t5
   WHERE (12=c5 OR 708=e5)
UNION
  SELECT e2 FROM t2
   WHERE b2 in (706,938,903,489,818,351,170,592,220,966,329)
      OR (e2=572 AND 266=a2)
      OR (282=c2 OR d2=241)
EXCEPT
  SELECT a1 FROM t1
   WHERE NOT (c1 in (523,57,776,736,3,915,88));
