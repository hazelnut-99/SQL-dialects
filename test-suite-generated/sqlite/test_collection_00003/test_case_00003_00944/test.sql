SELECT c3 FROM t3
   WHERE (b3=790 OR 29=c3)
UNION ALL
  SELECT e6 FROM t6
   WHERE (969=e6 OR 929=d6 OR 360=e6)
UNION
  SELECT e5 FROM t5
   WHERE (c5=625 AND d5=810 AND b5=771 AND 184=e5 AND a5=821)
      OR (729=d5)
      OR (c5=734 OR 403=b5 OR a5=544)
UNION
  SELECT c4 FROM t4
   WHERE d4 in (597,260,491,953,223,593,950,60)
      OR (491=e4 OR b4=379 OR c4=984)
      OR (e4=617 OR c4=424 OR 703=c4)
UNION ALL
  SELECT d9 FROM t9
   WHERE c9 in (323,764,547,836,187,419,224,288,252,732,843);
