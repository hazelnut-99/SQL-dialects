SELECT a6+30, a8, x1, d2+e6, d4, d9+e2, b3+a4
  FROM t6, t9, t8, t1, t3, t2, t4
 WHERE a1 in (707,607,492,281,338,637,622,767)
   AND d6 in (600,393,613,901,489)
   AND a3=368
   AND a9 in (747,172,160,553)
   AND d2 in (598,886,977)
   AND b4=d6
   AND (e8=495 OR e8=221 OR e8=296);
