SELECT a4 FROM t4
   WHERE (948=a4)
UNION
  SELECT e7 FROM t7
   WHERE (c7=585 AND 936=a7 AND 827=b7 AND 196=d7 AND 929=e7)
EXCEPT
  SELECT e3 FROM t3
   WHERE NOT (e3 in (929,823,272,814,892,83,833))
UNION
  SELECT d6 FROM t6
   WHERE (a6=255 OR 1=e6 OR 664=d6)
      OR (938=c6 AND 797=d6 AND a6=706)
      OR b6 in (490,629,739,230,923,158,974,583)
UNION ALL
  SELECT a2 FROM t2
   WHERE (e2=721 AND 404=d2)
UNION ALL
  SELECT b9 FROM t9
   WHERE d9 in (283,420,553,821,763,439,601,345,720,268,922);
