SELECT e2 FROM t2
   WHERE c2 in (551,24,557,933)
      OR (434=e2 OR 336=a2 OR 751=a2)
      OR (103=c2 AND d2=838)
UNION
  SELECT c3 FROM t3
   WHERE (662=d3)
UNION ALL
  SELECT e7 FROM t7
   WHERE (280=b7)
EXCEPT
  SELECT a1 FROM t1
   WHERE NOT (a1 in (145,241,358,330,109,637,231,853,173,847,553,746,640)
           OR (758=c1 AND a1=281));
