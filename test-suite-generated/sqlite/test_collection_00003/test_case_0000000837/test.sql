SELECT e1 FROM t1
   WHERE a1 in (23,524,668)
      OR a1 in (629,553,853,88,931,895,972,189,767,267,591)
EXCEPT
  SELECT b4 FROM t4
   WHERE NOT ((358=c4)
           OR a4 in (81,596,804,558,845,355,513,950)
           OR (948=c4))
EXCEPT
  SELECT a7 FROM t7
   WHERE NOT ((970=e7)
           OR (648=c7))
EXCEPT
  SELECT e5 FROM t5
   WHERE NOT ((d5=360)
           OR b5 in (26,703,723,26,822,183,759,685))
UNION ALL
  SELECT c3 FROM t3
   WHERE (a3=865 AND c3=887 AND 584=b3 AND 425=d3)
      OR (814=b3 AND 146=c3);
