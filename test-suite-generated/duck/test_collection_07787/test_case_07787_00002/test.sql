SELECT sum (a) OVER win FROM t2
  WINDOW win AS (
      ORDER BY b NULLS LAST RANGE BETWEEN 2 FOLLOWING AND 1 FOLLOWING
  );
