SELECT a1 FROM t1
   WHERE (172=d1)
INTERSECT
  SELECT c9 FROM t9
   WHERE NOT ((e9=542 AND 790=d9))
UNION
  SELECT b2 FROM t2
   WHERE (a2=863 OR 334=d2)
      OR d2 in (86,838,398,292,873,854,306,476,723,310,263,753,265,598)
      OR (d2=249 AND b2=527 AND c2=450 AND e2=386)
UNION
  SELECT a7 FROM t7
   WHERE (d7=785 OR 758=a7)
      OR (970=c7 OR b7=996 OR b7=323)
UNION ALL
  SELECT c6 FROM t6
   WHERE a6 in (182,46,861,33,696,829,64,128)
      OR (d6=185)
      OR (417=e6);
