SELECT d9 FROM t9
   WHERE c9 in (253,476,800,180)
      OR c9 in (834,534,853,575,95,222,662,39,975,531)
      OR b9 in (818,77,751,64,326,819,170)
UNION ALL
  SELECT d1 FROM t1
   WHERE (b1=995 AND 209=e1 AND 765=c1 AND 445=a1 AND 508=d1)
EXCEPT
  SELECT e3 FROM t3
   WHERE NOT ((490=a3 AND 586=e3 AND 73=b3)
           OR (b3=888 OR c3=645))
UNION
  SELECT a7 FROM t7
   WHERE (478=c7)
UNION
  SELECT b5 FROM t5
   WHERE (222=c5)
      OR (a5=148 OR 989=c5)
      OR (413=a5 OR b5=846)
UNION
  SELECT a4 FROM t4
   WHERE (94=b4 AND 159=a4 AND 873=c4 AND 881=d4 AND 179=e4)
      OR (e4=543)
      OR c4 in (690,162,936,728,712,482,752,0,88,720,74);
