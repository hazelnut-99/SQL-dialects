SELECT e2 FROM t2
   WHERE c2 in (933,333,233,160,925,46,512,830,692,182,61)
      OR (c2=411 OR 691=a2 OR 813=d2)
      OR (e2=820 OR b2=317)
UNION ALL
  SELECT b7 FROM t7
   WHERE (428=e7)
      OR (e7=156 AND 192=b7)
EXCEPT
  SELECT b8 FROM t8
   WHERE NOT ((b8=34)
           OR b8 in (984,394,52,352,792,145,7)
           OR (472=a8 AND c8=375 AND e8=349))
UNION
  SELECT c4 FROM t4
   WHERE (c4=319 AND a4=513 AND e4=677)
UNION
  SELECT e3 FROM t3
   WHERE (594=a3)
      OR (c3=800 OR e3=25 OR 850=d3)
      OR (876=e3 AND 577=b3 AND a3=181 AND c3=492)
EXCEPT
  SELECT d1 FROM t1
   WHERE NOT ((246=c1 OR b1=572 OR d1=17)
           OR (275=d1 AND 871=c1 AND 49=b1 AND e1=146 AND a1=371)
           OR (281=b1 OR b1=836 OR d1=874))
EXCEPT
  SELECT e5 FROM t5
   WHERE NOT (c5 in (766,696,915,196,825,797,733)
           OR (e5=554 OR d5=413 OR b5=389));
