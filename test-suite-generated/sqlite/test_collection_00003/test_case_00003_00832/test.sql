SELECT e8 FROM t8
   WHERE c8 in (374,230,79,943,117,851,656,225,844,151,250,790,720,521)
      OR (463=e8)
INTERSECT
  SELECT e3 FROM t3
   WHERE NOT ((133=d3)
           OR c3 in (929,900,954,324,549,592,439)
           OR (464=b3 AND 403=c3 AND a3=41));
