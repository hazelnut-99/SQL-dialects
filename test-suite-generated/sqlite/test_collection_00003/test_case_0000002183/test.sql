SELECT x4, d2+b8, e8, x3, d1*74, c6*79+b2
  FROM t2, t4, t8, t6, t1, t3
 WHERE a1=75
   AND (b2=519 OR b2=649)
   AND a3 in (499,820,548)
   AND e8 in (761,833,497,561,440)
   AND d6 in (36,185,581,269,473,147)
   AND b4=402;
