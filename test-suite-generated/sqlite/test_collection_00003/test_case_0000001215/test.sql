SELECT d7 FROM t7
   WHERE d7 in (306,782,891,507,172,436,575,982,276,131,527,956,105)
UNION ALL
  SELECT a1 FROM t1
   WHERE (643=a1 AND d1=586)
      OR d1 in (319,130,922,223,175,346,806,679)
      OR (a1=829 OR d1=215 OR c1=402)
UNION ALL
  SELECT c5 FROM t5
   WHERE (b5=69)
UNION ALL
  SELECT a2 FROM t2
   WHERE c2 in (837,160,312,657,360,966,275,274,992,688,758,360)
      OR (222=a2 OR c2=247 OR 282=e2)
      OR (e2=572 OR b2=811)
EXCEPT
  SELECT d3 FROM t3
   WHERE NOT (c3 in (211,317,986,656,80,555,84,592,492,324)
           OR (e3=972 AND b3=837 AND 38=d3 AND a3=383 AND c3=792))
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT ((149=b9 AND a9=240 AND 476=c9 AND e9=713)
           OR (d9=602 OR 69=a9)
           OR (e9=792 AND 420=d9 AND b9=832 AND a9=548));
