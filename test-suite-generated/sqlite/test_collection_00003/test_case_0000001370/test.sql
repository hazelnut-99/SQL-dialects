SELECT d5 FROM t5
   WHERE (942=b5 AND a5=132)
      OR a5 in (153,270,5)
      OR d5 in (847,514,343,963,856,691,960,4,835,731,742)
UNION ALL
  SELECT b2 FROM t2
   WHERE a2 in (664,56,910,268,1,336,779)
      OR (d2=838 AND 985=b2 AND a2=936 AND c2=512 AND e2=629)
EXCEPT
  SELECT a4 FROM t4
   WHERE NOT (e4 in (405,237,312,854,372,858,312,951,12,163,557,217)
           OR (319=c4 OR 739=e4)
           OR (481=d4 OR d4=881 OR 925=b4))
UNION ALL
  SELECT b8 FROM t8
   WHERE d8 in (439,179,422,711,291,761,899,835,743)
      OR (a8=564)
      OR (454=b8 OR 381=e8);
