SELECT c1 FROM t1
   WHERE (788=c1 OR 346=c1 OR 899=d1)
      OR (148=e1 OR a1=249 OR d1=376)
      OR (233=b1 AND 55=d1 AND 12=e1 AND c1=617 AND a1=544)
UNION ALL
  SELECT a4 FROM t4
   WHERE (877=d4 AND b4=68 AND c4=47 AND e4=858)
UNION ALL
  SELECT e5 FROM t5
   WHERE (e5=812 AND 805=d5 AND 362=a5 AND b5=193 AND c5=44)
EXCEPT
  SELECT c8 FROM t8
   WHERE NOT (d8 in (523,936,269,715,534)
           OR d8 in (811,761,580,96,880)
           OR b8 in (219,366,487,503,228,934,975,705))
EXCEPT
  SELECT c7 FROM t7
   WHERE NOT ((709=a7 AND d7=341)
           OR (854=a7 AND 234=e7 AND 939=d7))
EXCEPT
  SELECT d9 FROM t9
   WHERE NOT ((c9=273 OR d9=679 OR 148=a9)
           OR (987=d9)
           OR (347=d9 AND 19=e9))
EXCEPT
  SELECT c2 FROM t2
   WHERE NOT ((498=d2 OR 878=c2 OR d2=621)
           OR (223=a2)
           OR (b2=351 AND 76=a2 AND c2=887))
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT ((d3=850 AND 159=b3))
UNION
  SELECT d6 FROM t6
   WHERE (a6=251 AND d6=578 AND b6=565 AND c6=673)
      OR (e6=766);
