SELECT b9 FROM t9
   WHERE (c9=60 OR 240=a9)
EXCEPT
  SELECT e3 FROM t3
   WHERE NOT (a3 in (429,935,594,282,30,615,559,576)
           OR a3 in (164,513,751,763,364,995,353,5,490,637))
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT ((87=a7)
           OR (290=e7 OR b7=949))
EXCEPT
  SELECT e1 FROM t1
   WHERE NOT ((e1=732 OR 211=b1)
           OR (113=e1 AND 172=d1 AND 622=a1 AND b1=853 AND c1=762)
           OR a1 in (445,742,358,918,492,996))
UNION
  SELECT a5 FROM t5
   WHERE (54=a5)
      OR c5 in (147,678,819,978,598,485,293,915,941,855,809,634)
UNION ALL
  SELECT b4 FROM t4
   WHERE (357=b4)
      OR (619=c4 OR 261=b4)
      OR (993=c4)
UNION
  SELECT a6 FROM t6
   WHERE a6 in (474,1,683,66,718,680)
      OR (230=e6 AND 393=d6 AND c6=54 AND 774=b6 AND a6=839)
EXCEPT
  SELECT d8 FROM t8
   WHERE NOT ((899=d8 OR b8=102))
EXCEPT
  SELECT a2 FROM t2
   WHERE NOT ((262=a2 OR 373=d2)
           OR (d2=448)
           OR (e2=781 AND c2=878 AND a2=709 AND d2=448 AND b2=605));
