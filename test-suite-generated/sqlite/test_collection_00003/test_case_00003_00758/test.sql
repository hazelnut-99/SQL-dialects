SELECT d4 FROM t4
   WHERE (e4=151 OR e4=931)
      OR (950=d4)
UNION ALL
  SELECT e7 FROM t7
   WHERE (976=e7 AND a7=876 AND 590=d7)
      OR (105=b7 OR a7=442)
UNION ALL
  SELECT d9 FROM t9
   WHERE (745=d9 AND 837=e9 AND 451=c9)
      OR (834=c9 AND a9=776)
      OR (304=a9 OR e9=647)
UNION ALL
  SELECT c6 FROM t6
   WHERE e6 in (766,893,631,100,95,74,946,241,707,588,750,324)
      OR e6 in (682,634,495,738,360,731,417)
      OR c6 in (975,12,928,413,4,123)
UNION ALL
  SELECT c8 FROM t8
   WHERE c8 in (656,965,866,113,100,160,851,508,705,117,32,421)
EXCEPT
  SELECT b3 FROM t3
   WHERE NOT (c3 in (80,777,656,809))
EXCEPT
  SELECT a5 FROM t5
   WHERE NOT ((b5=605)
           OR (25=e5))
EXCEPT
  SELECT d1 FROM t1
   WHERE NOT (e1 in (117,96,483,72,313,247,221,210,931,381,95,12,747,943)
           OR b1 in (49,447,662,620,788,226,422,894,426,254));
