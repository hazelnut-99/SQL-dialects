SELECT min (a) OVER win FROM t2
  WINDOW win AS (
      ORDER BY b NULLS FIRST RANGE BETWEEN 1000 PRECEDING AND 2000 PRECEDING
  );
