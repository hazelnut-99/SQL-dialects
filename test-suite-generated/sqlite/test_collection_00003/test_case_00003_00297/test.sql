SELECT e2 FROM t2
   WHERE (510=e2 OR 87=c2 OR c2=148)
UNION ALL
  SELECT b4 FROM t4
   WHERE (d4=409 OR 350=e4 OR 631=c4)
      OR (667=c4 OR 629=a4)
EXCEPT
  SELECT c5 FROM t5
   WHERE NOT ((e5=696 AND b5=113)
           OR d5 in (274,343,883,977,480,634,479,42,271,520,910));
