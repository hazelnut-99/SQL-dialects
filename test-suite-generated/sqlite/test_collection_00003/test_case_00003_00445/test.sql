SELECT d3 FROM t3
   WHERE d3 in (355,582,850,118,866,495,444,260,737,1,944,708)
      OR e3 in (862,265,260,892,854,135,593,602,854)
      OR (c3=823 OR 295=b3 OR 863=c3)
EXCEPT
  SELECT b7 FROM t7
   WHERE NOT (e7 in (272,862,439,67))
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT (e9 in (251,127,307,291,860,837,844,792,239))
EXCEPT
  SELECT a5 FROM t5
   WHERE NOT (d5 in (98,271,171,964,960,570,769,361,437,957,814,369,787)
           OR (685=b5 AND 101=c5 AND d5=1 AND 758=e5 AND 319=a5))
EXCEPT
  SELECT e4 FROM t4
   WHERE NOT ((597=d4 AND 469=b4 AND 671=c4 AND e4=816))
EXCEPT
  SELECT c1 FROM t1
   WHERE NOT (c1 in (681,626,762)
           OR (52=e1 OR e1=897))
EXCEPT
  SELECT c6 FROM t6
   WHERE NOT (b6 in (834,512,549,681,974,300,606,565,281)
           OR d6 in (269,581,393,488,66,367,846,867,734,931,974,901)
           OR e6 in (324,550,847,230,794,585,915))
EXCEPT
  SELECT c2 FROM t2
   WHERE NOT ((d2=345)
           OR (c2=902 OR 372=c2))
UNION
  SELECT b8 FROM t8
   WHERE (586=e8 AND 54=a8 AND 231=c8 AND 324=b8 AND d8=889)
      OR (b8=359 AND 72=a8 AND 805=d8);
