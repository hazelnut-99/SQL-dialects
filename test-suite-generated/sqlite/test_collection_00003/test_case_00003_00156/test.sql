SELECT e3 FROM t3
   WHERE (774=e3 AND 806=c3 AND a3=244 AND d3=314)
      OR (c3=800 AND b3=70 AND d3=170 AND e3=303 AND 197=a3)
      OR b3 in (178,386,549,156,480,318,214)
UNION ALL
  SELECT a7 FROM t7
   WHERE (a7=500 AND e7=4)
      OR a7 in (114,27,916,715,848,982,325,950,982,158)
EXCEPT
  SELECT a9 FROM t9
   WHERE NOT (c9 in (451,923,751,90,476,278,836,126,739,575,739,347,857,975)
           OR (938=d9 AND 703=b9 AND a9=982 AND c9=801 AND 15=e9));
