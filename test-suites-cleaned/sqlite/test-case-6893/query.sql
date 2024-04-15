SELECT a6+30, a8, x1, d2+e6, d4, d9+e2, b3+a4
  FROM t1, t8, t3, t6, t2, t4, t9
 WHERE b4=d6
   AND d2 in (598,886,977)
   AND (e8=495 OR e8=221 OR e8=296)
   AND a1 in (707,607,492,281,338,637,622,767)
   AND a3=368
   AND d6 in (600,393,613,901,489)
   AND a9 in (747,172,160,553);
