SELECT b4 FROM t4
   WHERE e4 in (1,575,885,719,739,151,820,600,377,858,252,596,12)
      OR (617=d4 OR 293=c4)
      OR e4 in (352,48,206)
UNION ALL
  SELECT a6 FROM t6
   WHERE (c6=287)
      OR (620=c6)
      OR (185=d6 AND 6=e6 AND c6=287 AND 962=b6)
EXCEPT
  SELECT a7 FROM t7
   WHERE NOT ((a7=97 AND 579=b7 AND d7=527))
UNION
  SELECT e2 FROM t2
   WHERE c2 in (233,251,711,964,160,360,854)
      OR (b2=161 OR 235=a2 OR 35=a2)
      OR (c2=160 AND 441=e2 AND 555=d2 AND 135=a2)
EXCEPT
  SELECT d9 FROM t9
   WHERE NOT ((305=d9 OR e9=149 OR 696=c9)
           OR (19=b9 AND 847=a9 AND c9=75 AND 129=d9 AND e9=549))
UNION ALL
  SELECT c8 FROM t8
   WHERE (d8=108 AND 374=c8 AND b8=454 AND 592=e8)
      OR (a8=259 AND b8=705 AND e8=561)
      OR e8 in (579,310,233,203,305,455,809)
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT ((685=b3 OR 135=d3)
           OR (b3=505 OR c3=885 OR 378=a3)
           OR b3 in (454,295,198,41,57,339,127,73))
UNION ALL
  SELECT a1 FROM t1
   WHERE (a1=866 OR e1=298 OR c1=898)
      OR (717=d1 OR d1=55 OR 585=c1)
      OR b1 in (572,259,5,226,523,779,993,43,404,570,807)
EXCEPT
  SELECT a5 FROM t5
   WHERE NOT (d5 in (779,132,238,274,742,789,155,553,401,271)
           OR (d5=991 OR b5=772 OR 413=d5)
           OR (e5=729 OR 554=e5 OR b5=855));
