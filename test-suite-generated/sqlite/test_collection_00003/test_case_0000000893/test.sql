SELECT d1 FROM t1
   WHERE (b1=674 AND 395=a1 AND e1=442 AND 277=d1 AND 915=c1)
UNION
  SELECT a2 FROM t2
   WHERE (e2=812 OR d2=367 OR 351=d2)
EXCEPT
  SELECT c6 FROM t6
   WHERE NOT ((223=d6 AND a6=270 AND e6=324)
           OR (d6=269 AND c6=28 AND 540=a6 AND b6=601))
UNION
  SELECT d5 FROM t5
   WHERE (897=b5 AND e5=589 AND a5=335 AND 222=c5 AND d5=343)
      OR e5 in (342,585,522,206,885,22,772,154,554,971)
      OR a5 in (757,730,148,319,341,637,696)
EXCEPT
  SELECT b3 FROM t3
   WHERE NOT ((16=a3 OR e3=136 OR e3=187))
UNION ALL
  SELECT a4 FROM t4
   WHERE (170=a4 OR 794=c4 OR 150=d4)
      OR (a4=513)
UNION ALL
  SELECT d7 FROM t7
   WHERE a7 in (982,27,936,430,757,722,854,9,22)
EXCEPT
  SELECT a9 FROM t9
   WHERE NOT (a9 in (776,764,685,295,953,712,269,683,273,747,102)
           OR (272=c9 AND b9=171)
           OR (959=a9 AND 646=d9 AND b9=578));
