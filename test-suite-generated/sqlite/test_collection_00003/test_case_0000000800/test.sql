SELECT d9 FROM t9
   WHERE e9 in (704,965,251,672,477,477,161,788,301,968,936)
      OR (c9=751 AND a9=378)
UNION
  SELECT e1 FROM t1
   WHERE (654=d1)
UNION ALL
  SELECT b5 FROM t5
   WHERE (362=a5)
EXCEPT
  SELECT c2 FROM t2
   WHERE NOT (c2 in (967,24,933,233,244,653,46,996));
