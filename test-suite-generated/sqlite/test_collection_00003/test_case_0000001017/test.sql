SELECT c9 FROM t9
   WHERE e9 in (845,239,978,486,647,127,383,255,418)
      OR (d9=553 OR c9=843)
UNION
  SELECT b5 FROM t5
   WHERE (a5=536 OR 544=a5)
EXCEPT
  SELECT e8 FROM t8
   WHERE NOT ((e8=579 AND 889=b8 AND d8=706 AND a8=597 AND 32=c8)
           OR b8 in (219,287,259,852,773,704,102,369,540)
           OR (d8=889 OR d8=326 OR 421=c8))
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT (a3 in (181,727,697,820,218,198,75,368,105,892,829)
           OR a3 in (699,548,376,296,181,935))
UNION
  SELECT e1 FROM t1
   WHERE (213=d1 AND c1=775 AND 779=e1 AND 993=b1)
      OR c1 in (296,246,97,299,88,636,388,771,177,765)
      OR (766=e1 OR b1=179)
UNION
  SELECT c7 FROM t7
   WHERE (b7=921 AND 249=c7 AND 665=a7)
      OR (876=a7 OR 929=e7 OR b7=808)
      OR e7 in (945,826,303,793,499,462,4,955,488);
