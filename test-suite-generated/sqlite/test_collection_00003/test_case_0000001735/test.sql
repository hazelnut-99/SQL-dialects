SELECT e7 FROM t7
   WHERE (590=d7)
      OR c7 in (648,333,764)
      OR e7 in (282,356,638)
UNION
  SELECT c2 FROM t2
   WHERE (524=e2 OR 548=e2)
      OR (b2=543)
EXCEPT
  SELECT d8 FROM t8
   WHERE NOT ((767=d8)
           OR (a8=402 AND e8=620 AND 168=c8 AND 542=b8 AND 735=d8)
           OR (365=b8 AND 730=c8 AND 296=e8))
UNION
  SELECT d6 FROM t6
   WHERE b6 in (427,774,6,348,606,662,782,351,583,537,565,511)
UNION ALL
  SELECT a1 FROM t1
   WHERE e1 in (288,763,313)
      OR e1 in (11,125,558,181,117,363,568,367,402,504,813,148)
      OR (d1=550 OR d1=310)
UNION ALL
  SELECT d9 FROM t9
   WHERE (757=a9)
      OR (515=c9 OR 553=d9 OR e9=245)
      OR (d9=646)
UNION ALL
  SELECT d5 FROM t5
   WHERE (a5=357 OR 530=b5)
      OR (293=c5)
      OR (e5=899)
UNION ALL
  SELECT b4 FROM t4
   WHERE (429=d4 AND e4=223)
      OR d4 in (349,549,661,481,197,877,973,323,706,55,639,987)
EXCEPT
  SELECT a3 FROM t3
   WHERE NOT ((c3=353 AND b3=434));
