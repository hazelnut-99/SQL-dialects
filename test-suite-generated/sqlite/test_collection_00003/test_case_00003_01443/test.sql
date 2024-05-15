SELECT x4, d2+b8, e8, x3, d1*74, c6*79+b2
  FROM t4, t8, t3, t1, t6, t2
 WHERE d6 in (36,185,581,269,473,147)
   AND b4=402
   AND e8 in (761,833,497,561,440)
   AND a1=75
   AND a3 in (499,820,548)
   AND (b2=519 OR b2=649);
