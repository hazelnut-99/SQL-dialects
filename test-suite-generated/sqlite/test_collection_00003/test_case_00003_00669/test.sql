SELECT b9 FROM t9
   WHERE (694=d9 AND e9=445 AND a9=821 AND 857=c9 AND b9=122)
      OR (289=b9 OR 936=e9 OR e9=844)
      OR (905=c9 OR d9=360)
UNION
  SELECT c7 FROM t7
   WHERE (e7=422 AND b7=257)
      OR (e7=439 OR 452=a7)
UNION ALL
  SELECT e6 FROM t6
   WHERE (a6=436 AND 880=b6 AND c6=513 AND 613=d6 AND e6=24)
EXCEPT
  SELECT b2 FROM t2
   WHERE NOT (d2 in (260,80,404,663,953,537,743,328,362)
           OR (a2=80 OR 659=e2 OR 60=b2))
EXCEPT
  SELECT c5 FROM t5
   WHERE NOT (d5 in (805,649,313,789,114,565,855,360,616,742,171,938,98,682)
           OR (805=d5 AND b5=193 AND c5=44));
