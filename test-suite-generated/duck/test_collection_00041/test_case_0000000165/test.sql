SELECT t2.*
FROM (VALUES (1)) t(_corr), LATERAL (
WITH RECURSIVE collatz(x, t, steps) AS
(
  SELECT x, x, 0
  FROM   (WITH RECURSIVE n(t) AS (SELECT _corr UNION ALL SELECT t+_corr FROM n WHERE t < 10) SELECT * FROM n) AS _(x)
    UNION ALL
  (SELECT x, CASE WHEN t%2 = _corr THEN t * 3 + p ELSE t / 2 END, steps + p
   FROM   collatz, (WITH RECURSIVE n(t) AS (SELECT _corr UNION ALL SELECT t+_corr FROM n WHERE t < _corr) SELECT * FROM n) AS _(p)
   WHERE  t <> _corr)
)
SELECT * FROM collatz WHERE t = _corr
ORDER BY x
) t2;
