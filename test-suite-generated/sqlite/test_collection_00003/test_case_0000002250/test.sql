SELECT c6+d6, c9, d7, x8
  FROM t6, t8, t9, t7
 WHERE (e8=487 OR e8=392 OR e8=463 OR 203=e8)
   AND (e7=428 OR 851=e7 OR e7=7)
   AND c9 in (402,349,240,526,187)
   AND (956=d6 OR 647=d6 OR 667=d6 OR 664=d6);
