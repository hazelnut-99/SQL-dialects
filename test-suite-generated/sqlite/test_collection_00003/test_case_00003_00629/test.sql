SELECT a9 FROM t9
   WHERE e9 in (679,542,788,146,127,841,245,418)
      OR (c9=469 AND 818=b9)
INTERSECT
  SELECT d4 FROM t4
   WHERE NOT (a4 in (74,442,948,60,451,82,105,261,81,921,234,139,105)
           OR c4 in (758,658,221,732,712))
INTERSECT
  SELECT c5 FROM t5
   WHERE NOT (a5 in (153,821,373,18,99,319,55,270,743,392,331,988)
           OR (502=b5 AND 855=d5 AND 989=c5 AND 800=a5 AND 364=e5)
           OR c5 in (485,678,697,634,978,152,261,729,696,527,3,797,657,805))
INTERSECT
  SELECT d3 FROM t3
   WHERE NOT ((435=c3 OR b3=211)
           OR (a3=594 AND 578=e3 AND 650=d3))
INTERSECT
  SELECT b7 FROM t7
   WHERE NOT (c7 in (954,94,843,970,206,243,375)
           OR (315=d7 AND b7=257 AND 290=a7)
           OR (e7=624 AND c7=22 AND a7=466 AND d7=787));
