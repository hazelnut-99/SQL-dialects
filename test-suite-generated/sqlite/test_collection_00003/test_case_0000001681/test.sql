SELECT a4 FROM t4
   WHERE (297=c4 OR e4=511 OR c4=581)
      OR (903=b4 OR a4=235 OR c4=794)
UNION
  SELECT b2 FROM t2
   WHERE (e2=125)
      OR (d2=914 OR e2=37 OR c2=823)
      OR d2 in (216,177,362,813,555,598,19,351,498,669,398,292)
EXCEPT
  SELECT e3 FROM t3
   WHERE NOT ((890=d3 OR 728=e3))
EXCEPT
  SELECT b7 FROM t7
   WHERE NOT (a7 in (288,195,945,574,958,285,277,925,180,936,565,114,736,386)
           OR (e7=39 AND c7=648)
           OR (11=a7 AND 257=c7 AND b7=679 AND d7=418))
EXCEPT
  SELECT d9 FROM t9
   WHERE NOT ((178=b9 AND 936=e9 AND 55=d9)
           OR (688=c9 AND 5=b9 AND 967=d9 AND e9=687)
           OR (224=c9 AND 554=d9 AND 35=e9))
EXCEPT
  SELECT e8 FROM t8
   WHERE NOT ((b8=155 OR d8=474)
           OR e8 in (729,811,431,608,918,260,455,411,421,586,620));
