SELECT d5 FROM t5
   WHERE (b5=412 AND 598=c5 AND d5=521 AND e5=72 AND a5=757)
      OR d5 in (910,42,263,806,118,957,738,940,938,480,495)
      OR a5 in (988,519,536,514,837,597,599,24,478,342)
INTERSECT
  SELECT d9 FROM t9
   WHERE NOT ((c9=579 AND b9=426 AND 270=d9))
UNION
  SELECT e6 FROM t6
   WHERE (a6=787 OR c6=718)
      OR d6 in (797,500,376,147,600,271,734,457,488,277,822)
EXCEPT
  SELECT d1 FROM t1
   WHERE NOT ((c1=200))
EXCEPT
  SELECT a2 FROM t2
   WHERE NOT ((d2=137 OR b2=181)
           OR d2 in (476,454,931)
           OR (e2=512))
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT (a3 in (349,476,788,101,275,566,551,184,727,515,995)
           OR c3 in (885,360,929,455,146,133,372,647)
           OR (e3=972 AND b3=837));
