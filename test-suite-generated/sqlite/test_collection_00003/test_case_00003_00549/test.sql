SELECT c3 FROM t3
   WHERE a3 in (697,190,478,895,197,75,964,476,947,135,822)
      OR (b3=203)
EXCEPT
  SELECT b8 FROM t8
   WHERE NOT (b8 in (755,702,253,105)
           OR (d8=366 OR 869=a8 OR 997=b8)
           OR c8 in (374,93,154,461,250,720,149,229,283,563,647,419,907))
UNION
  SELECT b4 FROM t4
   WHERE (a4=950 OR c4=767 OR d4=373)
      OR (579=b4 OR 977=e4)
      OR (e4=415 AND a4=510 AND 953=d4 AND 319=c4)
EXCEPT
  SELECT b5 FROM t5
   WHERE NOT ((514=c5))
EXCEPT
  SELECT e7 FROM t7
   WHERE NOT (b7 in (804,83,627,506,949,455,827,881,562)
           OR c7 in (564,301,954,906,795,238,344,341)
           OR (303=e7 AND c7=548 AND b7=83 AND 703=a7 AND d7=680));
