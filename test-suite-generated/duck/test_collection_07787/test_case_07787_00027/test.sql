SELECT max (a) OVER win FROM t2
  WINDOW win AS (
      ORDER BY b NULLS LAST RANGE BETWEEN 6 FOLLOWING AND UNBOUNDED FOLLOWING
  );
