SELECT c9, e8+c4, e5*465, b1, c4+b3, e6, c3+a1, b2+b6
  FROM t3, t8, t2, t5, t1, t4, t9, t6
 WHERE d6=d4
   AND (e8=440 OR 600=e8)
   AND a1=406
   AND (435=a9 OR 875=a9 OR 14=a9 OR a9=549)
   AND b4 in (849,184,372,888,982,748,35,261)
   AND a3=d6
   AND e2=213
   AND 527=c5;
