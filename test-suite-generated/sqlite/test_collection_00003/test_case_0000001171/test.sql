SELECT c6 FROM t6
   WHERE (984=b6)
EXCEPT
  SELECT b7 FROM t7
   WHERE NOT ((e7=595 OR b7=924))
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT ((418=e9)
           OR (d9=258 AND c9=240 AND 944=e9 AND a9=549 AND b9=936))
UNION
  SELECT c8 FROM t8
   WHERE (a8=259 OR d8=482 OR 210=a8)
UNION
  SELECT e4 FROM t4
   WHERE (952=a4 OR c4=293 OR 319=c4)
EXCEPT
  SELECT e3 FROM t3
   WHERE NOT (e3 in (401,466,526,193,836))
UNION ALL
  SELECT e1 FROM t1
   WHERE (350=b1 OR e1=483)
      OR e1 in (763,546,737,209,956,667,56)
      OR d1 in (172,412,972,947,902,761,432,161,655,885)
EXCEPT
  SELECT a5 FROM t5
   WHERE NOT ((282=d5 OR b5=234));
