SELECT e8 FROM t8
   WHERE c8 in (32,321,866,979,61,961,136,693,448,790)
UNION
  SELECT d1 FROM t1
   WHERE e1 in (228,897,11)
      OR (445=a1 AND 765=c1 AND d1=508 AND 995=b1)
UNION
  SELECT a4 FROM t4
   WHERE (929=d4 AND 319=c4 AND a4=513)
      OR (c4=455 AND e4=372 AND 185=a4)
EXCEPT
  SELECT b3 FROM t3
   WHERE NOT ((792=c3 AND e3=119)
           OR (b3=130));
