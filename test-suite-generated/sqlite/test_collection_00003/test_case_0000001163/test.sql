SELECT c8 FROM t8
   WHERE d8 in (525,845,767,630,210,711,899,883,636,554,486,391,446)
      OR (e8=421)
      OR (b8=862)
UNION ALL
  SELECT e1 FROM t1
   WHERE (636=c1 AND e1=949 AND 550=d1 AND b1=736 AND a1=505)
EXCEPT
  SELECT b2 FROM t2
   WHERE NOT ((841=e2 AND 131=a2 AND c2=141 AND 21=b2 AND d2=953)
           OR (655=e2 OR e2=692 OR 512=c2)
           OR c2 in (333,202,61,233,837,290,312,807,509,692,292))
UNION
  SELECT b3 FROM t3
   WHERE e3 in (853,375,319,304,600,593,249,846,406,108,975,424)
      OR (e3=833 AND c3=600)
      OR (c3=677 AND d3=981 AND a3=611)
UNION ALL
  SELECT c6 FROM t6
   WHERE (568=a6)
EXCEPT
  SELECT e9 FROM t9
   WHERE NOT ((a9=830 OR 477=e9 OR b9=2)
           OR c9 in (936,151,349,457,240,739,587))
EXCEPT
  SELECT d7 FROM t7
   WHERE NOT ((d7=831))
UNION ALL
  SELECT d4 FROM t4
   WHERE (d4=820 AND 592=e4)
      OR (c4=586 OR c4=188 OR a4=105);
