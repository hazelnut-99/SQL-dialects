SELECT d9 FROM t9
   WHERE (115=a9)
      OR (864=b9 AND d9=568 AND 955=c9)
EXCEPT
  SELECT c7 FROM t7
   WHERE NOT (c7 in (232,145,764,948,954,944,589,682,709,813,966,564))
UNION ALL
  SELECT b8 FROM t8
   WHERE a8 in (597,653,848,855)
UNION
  SELECT d3 FROM t3
   WHERE e3 in (813,494,470,138,192,265)
      OR (611=a3 OR d3=515 OR 913=e3)
      OR (364=a3 AND e3=466 AND d3=850 AND 777=c3)
EXCEPT
  SELECT a1 FROM t1
   WHERE NOT ((d1=35)
           OR (b1=486));
