SELECT e4 FROM t4
   WHERE a4 in (580,105,51,841,933,29,847,223,968,606,605)
      OR (a4=990)
      OR c4 in (88,178,712,791,238,299,39,422,984,521)
UNION ALL
  SELECT c8 FROM t8
   WHERE b8 in (761,922,975,624,205,102,807,984,244)
      OR e8 in (600,512,881,864,203,272,846)
UNION
  SELECT e9 FROM t9
   WHERE e9 in (486,978,35,117,844,995,837,699,788)
UNION ALL
  SELECT c7 FROM t7
   WHERE (d7=724 OR 306=b7)
      OR c7 in (857,692,375,705,931);
