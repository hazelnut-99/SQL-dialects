SELECT a7 FROM t7
   WHERE (127=e7 AND 159=b7)
EXCEPT
  SELECT c6 FROM t6
   WHERE NOT ((834=b6 OR 64=a6 OR d6=489))
UNION ALL
  SELECT d4 FROM t4
   WHERE (678=b4)
      OR (281=a4)
EXCEPT
  SELECT a5 FROM t5
   WHERE NOT ((a5=392 AND b5=234 AND c5=544 AND e5=737 AND d5=883))
EXCEPT
  SELECT a2 FROM t2
   WHERE NOT (b2 in (725,275,820,418,811,414,357,433,181,549,546,932)
           OR c2 in (45,575,177,197,202,333,136,988,902,582,268,756,773))
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT ((720=a3))
EXCEPT
  SELECT a8 FROM t8
   WHERE NOT ((d8=223 AND 729=e8)
           OR c8 in (908,762,844,321,648)
           OR (997=b8))
UNION ALL
  SELECT d9 FROM t9
   WHERE a9 in (567,318,548,511,549,172,240,553,535,177,830)
UNION ALL
  SELECT e1 FROM t1
   WHERE (951=d1)
      OR (52=a1 AND c1=315 AND 25=d1 AND e1=210 AND b1=132)
      OR c1 in (343,375,416,393,69,88,417,976,272,980);
