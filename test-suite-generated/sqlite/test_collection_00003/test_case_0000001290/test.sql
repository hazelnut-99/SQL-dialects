SELECT d2 FROM t2
   WHERE (b2=864)
      OR b2 in (21,60,640,211,504,489,755,509,442,599,605,634,864)
UNION ALL
  SELECT a4 FROM t4
   WHERE (c4=220 AND a4=337 AND b4=917 AND 837=e4)
EXCEPT
  SELECT e6 FROM t6
   WHERE NOT (d6 in (147,489,590,931,974,463,560,223,778,493,956,473,974))
EXCEPT
  SELECT c5 FROM t5
   WHERE NOT ((a5=696 AND c5=649))
EXCEPT
  SELECT c9 FROM t9
   WHERE NOT ((a9=905 OR d9=608 OR d9=682));
