SELECT a4 FROM t4
   WHERE e4 in (958,415,63,1,372,296,575,290)
      OR a4 in (170,234,450,210,473)
UNION
  SELECT c6 FROM t6
   WHERE d6 in (367,488,66,689)
      OR e6 in (511,958,489,915,595,40,439)
EXCEPT
  SELECT d1 FROM t1
   WHERE NOT (b1 in (525,440,670,1,414,879,853,60,850,828))
EXCEPT
  SELECT d3 FROM t3
   WHERE NOT (e3 in (138,304,951,318,848,844,239,254,728,813,854,848,578,147)
           OR c3 in (305,80,792)
           OR c3 in (102,439,149,476,486,584))
UNION
  SELECT c5 FROM t5
   WHERE (d5=856)
      OR d5 in (841,883,738,313,343,757)
EXCEPT
  SELECT a8 FROM t8
   WHERE NOT ((d8=636 OR 728=a8 OR 162=b8)
           OR (741=b8)
           OR (186=e8))
EXCEPT
  SELECT d9 FROM t9
   WHERE NOT (a9 in (875,429,660,104,553,318,747,905,149,160,14,11,972));
