SELECT d2 FROM t2
   WHERE (e2=220)
UNION
  SELECT e4 FROM t4
   WHERE (c4=0)
UNION
  SELECT a5 FROM t5
   WHERE (851=e5 OR 311=a5 OR c5=797)
      OR (e5=812 AND 44=c5)
UNION ALL
  SELECT d7 FROM t7
   WHERE (396=b7)
      OR (541=b7 AND a7=995 AND c7=855 AND 302=e7 AND 276=d7)
UNION ALL
  SELECT e6 FROM t6
   WHERE (281=b6 OR c6=500)
      OR (b6=350 AND 77=e6)
      OR (367=d6)
EXCEPT
  SELECT e3 FROM t3
   WHERE NOT ((c3=285)
           OR c3 in (869,954,792,801,580,763,476,324,592,455,929))
EXCEPT
  SELECT e9 FROM t9
   WHERE NOT ((410=b9 OR a9=240 OR c9=547)
           OR (d9=235 AND 811=c9 AND b9=66 AND 383=e9 AND a9=559)
           OR (e9=607 OR b9=170));
