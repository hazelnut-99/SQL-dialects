SELECT a6 FROM t6
   WHERE d6 in (393,929,223,271,269,458,664,489,2,778,797,36,172,35)
      OR (572=a6 OR 428=d6)
      OR (954=b6 OR e6=574)
UNION ALL
  SELECT b3 FROM t3
   WHERE (178=b3 AND c3=900 AND 846=e3)
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT (d9 in (226,818,646,274,608))
EXCEPT
  SELECT e5 FROM t5
   WHERE NOT ((960=c5 OR 171=d5)
           OR b5 in (620,820,971,731,82,234,729))
EXCEPT
  SELECT a1 FROM t1
   WHERE NOT (c1 in (379,882,876,902,530,620)
           OR b1 in (282,253,233,736,115))
UNION
  SELECT c4 FROM t4
   WHERE (c4=752 AND e4=600 AND a4=281)
      OR (e4=397);
