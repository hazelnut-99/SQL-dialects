SELECT sum (a) OVER win FROM t2
  WINDOW win AS (
      ORDER BY b NULLS FIRST RANGE BETWEEN 2 FOLLOWING AND 1 FOLLOWING
  );
