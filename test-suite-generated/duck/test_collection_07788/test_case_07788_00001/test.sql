SELECT sum(a) OVER win FROM tx
  WINDOW win AS (
    PARTITION BY (
SELECT t FROM map WHERE v=a
    ) ORDER BY a
  ) ORDER BY ALL;
