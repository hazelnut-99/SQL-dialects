SELECT e8 FROM t8
   WHERE (a8=954)
      OR a8 in (957,386,807,994,150,826)
INTERSECT
  SELECT e2 FROM t2
   WHERE NOT (c2 in (268,272,837,444,4,810))
INTERSECT
  SELECT b3 FROM t3
   WHERE NOT (c3 in (986,777,476,467,750,887,885,326,565,317,641,81)
           OR d3 in (437,737,307,560,729,764,683,273,220,944,950)
           OR d3 in (624,354,403,983,483,118,38,415));
