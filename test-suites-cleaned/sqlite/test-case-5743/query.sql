SELECT c4 FROM t4
   WHERE (d4=821)
      OR (e4=71)
      OR (e4=763 OR 739=e4 OR b4=826)
INTERSECT
  SELECT b3 FROM t3
   WHERE NOT ((c3=40 AND 984=e3 AND 28=b3 AND 487=d3)
           OR (826=c3)
           OR (e3=846 OR b3=566 OR 997=a3))
INTERSECT
  SELECT b2 FROM t2
   WHERE NOT (b2 in (706,846,414)
           OR d2 in (260,367,643,454,126,315,235,137)
           OR (e2=783));
