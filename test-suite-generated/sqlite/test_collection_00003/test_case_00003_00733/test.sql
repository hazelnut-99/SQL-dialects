SELECT b7 FROM t7
   WHERE e7 in (197,782,31)
      OR (589=c7 AND d7=134 AND a7=433 AND b7=323)
      OR d7 in (837,131,315,306,603,399,328,164,142,939)
UNION
  SELECT c9 FROM t9
   WHERE b9 in (410,171,118,361)
      OR (c9=767 AND 868=b9 AND a9=474 AND 799=e9)
EXCEPT
  SELECT c5 FROM t5
   WHERE NOT (c5 in (187,210,155))
UNION ALL
  SELECT c4 FROM t4
   WHERE (987=d4)
      OR (936=c4 OR 484=c4);
