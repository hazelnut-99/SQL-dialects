SELECT c4 FROM t4
   WHERE (d4=236)
INTERSECT
  SELECT b6 FROM t6
   WHERE NOT (a6 in (384,801,173,821,615,40,182,811,251,818)
           OR a6 in (104,537,45,683,522,366,222,861))
UNION ALL
  SELECT d9 FROM t9
   WHERE (845=e9 AND 613=c9 AND 19=b9 AND 905=a9 AND d9=489)
      OR (987=d9)
EXCEPT
  SELECT a5 FROM t5
   WHERE NOT ((334=a5 OR 667=d5))
EXCEPT
  SELECT b7 FROM t7
   WHERE NOT ((d7=885 OR 929=e7 OR d7=974)
           OR b7 in (360,660,506,923,804))
EXCEPT
  SELECT e2 FROM t2
   WHERE NOT ((e2=524))
EXCEPT
  SELECT e1 FROM t1
   WHERE NOT ((807=d1 AND 296=c1 AND 731=e1 AND a1=294)
           OR (c1=534 OR d1=394 OR e1=442)
           OR (130=d1 AND 113=b1 AND 117=e1 AND 707=a1));
