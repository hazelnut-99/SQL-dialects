SELECT a8 FROM t8
   WHERE a8 in (341,882,553,386,150,66)
UNION
  SELECT d1 FROM t1
   WHERE (a1=862 OR 265=d1)
      OR a1 in (767,231,552)
      OR b1 in (942,633,594,60,486,696,211,310,113,432,729,350,440,422)
UNION
  SELECT d7 FROM t7
   WHERE (869=a7 AND 177=d7 AND c7=523 AND 979=e7 AND b7=868)
      OR (249=c7)
UNION
  SELECT c3 FROM t3
   WHERE a3 in (515,296,776,637,364,696,353)
      OR (792=c3 AND e3=972 AND 837=b3 AND a3=383 AND d3=38)
UNION
  SELECT c6 FROM t6
   WHERE (e6=550 AND b6=296 AND 786=d6 AND 752=c6 AND 64=a6)
      OR (629=b6 OR 767=d6 OR b6=267)
      OR (731=e6 AND c6=506 AND d6=355 AND 116=a6 AND b6=230)
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT ((a9=685 OR d9=686 OR 602=d9))
UNION
  SELECT d4 FROM t4
   WHERE (c4=584 AND 136=a4 AND b4=379)
      OR (2=b4 OR 917=d4 OR c4=794)
      OR (b4=35 OR 690=c4 OR b4=700)
UNION
  SELECT b5 FROM t5
   WHERE (a5=867 AND 34=e5 AND 856=c5 AND 861=b5 AND 565=d5)
EXCEPT
  SELECT e2 FROM t2
   WHERE NOT (d2 in (914,537,60));
