SELECT e7 FROM t7
   WHERE (b7=924 OR e7=508 OR b7=634)
      OR d7 in (724,684,956,781,315,205,572,982,817,296)
INTERSECT
  SELECT e5 FROM t5
   WHERE NOT ((559=b5))
UNION
  SELECT c1 FROM t1
   WHERE (b1=254)
UNION
  SELECT d4 FROM t4
   WHERE e4 in (438,885,38,476,12,37,377,257,816,631,252)
EXCEPT
  SELECT b3 FROM t3
   WHERE NOT ((e3=7 AND 697=a3 AND 124=b3 AND c3=688))
UNION
  SELECT a6 FROM t6
   WHERE (b6=350 OR a6=811)
      OR d6 in (337,647,367)
      OR c6 in (992,528,328,123,522,45,769)
EXCEPT
  SELECT c2 FROM t2
   WHERE NOT ((d2=931 AND 574=a2)
           OR (c2=193 OR d2=854 OR d2=256)
           OR (b2=276 AND a2=817 AND 177=d2 AND 496=c2 AND 753=e2))
UNION ALL
  SELECT c9 FROM t9
   WHERE (739=c9 OR 764=c9)
      OR (a9=549 OR e9=788 OR b9=136)
      OR d9 in (686,662,679,618,274,258,759,161,628,23,347);
