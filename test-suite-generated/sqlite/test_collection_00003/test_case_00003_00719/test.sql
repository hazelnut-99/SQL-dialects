SELECT c8 FROM t8
   WHERE (a8=347 OR 756=d8)
UNION ALL
  SELECT d2 FROM t2
   WHERE c2 in (127,657,251,411,894,966,87,220,676,729,466)
      OR (a2=374 OR d2=328)
      OR e2 in (820,647,923,548,138,629,945)
EXCEPT
  SELECT e4 FROM t4
   WHERE NOT (a4 in (378,574,605,386,948,513,901,451,540,152,337,625)
           OR (983=d4 AND e4=151 AND b4=653 AND 447=a4 AND 703=c4))
UNION
  SELECT e3 FROM t3
   WHERE d3 in (923,541,425,615)
      OR d3 in (283,503,896,548,635,895,38,560)
EXCEPT
  SELECT e7 FROM t7
   WHERE NOT ((172=d7 AND e7=826))
EXCEPT
  SELECT b5 FROM t5
   WHERE NOT ((822=b5 AND 599=c5)
           OR c5 in (149,924,101,437,941,894,613,570,723)
           OR (d5=480 AND 894=e5 AND 187=c5 AND b5=84))
EXCEPT
  SELECT e6 FROM t6
   WHERE NOT ((265=c6)
           OR (716=b6))
EXCEPT
  SELECT b1 FROM t1
   WHERE NOT ((253=c1 AND 504=d1 AND 584=b1 AND e1=695)
           OR (d1=75 AND 477=a1)
           OR (c1=498 OR 207=c1 OR b1=37))
UNION
  SELECT d9 FROM t9
   WHERE (e9=150 AND 90=c9 AND 421=b9)
      OR (602=d9);
