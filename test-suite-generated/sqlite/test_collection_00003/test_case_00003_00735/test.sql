SELECT a9 FROM t9
   WHERE c9 in (836,327,739,95,126)
UNION ALL
  SELECT a5 FROM t5
   WHERE a5 in (69,514,445,319,740,536,50,270,513,319)
      OR (e5=725 OR 602=d5 OR 674=b5)
UNION ALL
  SELECT a3 FROM t3
   WHERE (b3=178)
      OR (972=e3 AND 792=c3 AND 38=d3);
