SELECT e4 FROM t4
   WHERE a4 in (373,990,234,228)
      OR (a4=447 AND e4=151 AND c4=703 AND 983=d4 AND 653=b4)
UNION ALL
  SELECT c9 FROM t9
   WHERE (c9=60 AND 164=d9 AND 245=e9 AND b9=251)
      OR (e9=873)
EXCEPT
  SELECT b6 FROM t6
   WHERE NOT ((b6=392)
           OR (197=d6))
EXCEPT
  SELECT a2 FROM t2
   WHERE NOT ((b2=938 AND 836=d2 AND c2=449)
           OR e2 in (138,302,16,151,659)
           OR b2 in (546,173,968))
EXCEPT
  SELECT d8 FROM t8
   WHERE NOT ((e8=310 AND b8=155 AND 171=a8))
EXCEPT
  SELECT c1 FROM t1
   WHERE NOT ((921=e1))
UNION ALL
  SELECT b7 FROM t7
   WHERE (921=a7)
      OR c7 in (435,142,135,853,548,375,419,575,146,482,770,855)
UNION
  SELECT a5 FROM t5
   WHERE d5 in (940,369,369,492,780,171,557)
      OR c5 in (485,924,668,443,130,649,44);
