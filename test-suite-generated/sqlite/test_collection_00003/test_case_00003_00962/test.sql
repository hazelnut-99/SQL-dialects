SELECT e7 FROM t7
   WHERE a7 in (452,97,6,430,134,240,706,715,592,748)
      OR (b7=973 OR c7=843)
      OR (841=e7 OR 979=e7)
UNION
  SELECT e4 FROM t4
   WHERE (694=c4)
EXCEPT
  SELECT b9 FROM t9
   WHERE NOT ((495=d9 OR 553=a9)
           OR b9 in (245,269,136,595))
UNION ALL
  SELECT c6 FROM t6
   WHERE d6 in (822,970,73)
      OR (585=e6 AND 122=c6 AND 924=d6 AND 226=b6)
EXCEPT
  SELECT c3 FROM t3
   WHERE NOT ((d3=503 OR 262=a3)
           OR (992=a3 AND b3=202 AND 178=e3 AND 164=d3 AND c3=75)
           OR d3 in (139,522,607,74,871,981,307,665,238,886,363,729,423))
UNION ALL
  SELECT e5 FROM t5
   WHERE d5 in (957,32,991)
      OR e5 in (98,104,807,589,725,188,689,446,586,25,72)
      OR (921=a5 AND c5=894 AND 657=b5 AND 772=e5 AND 557=d5);
