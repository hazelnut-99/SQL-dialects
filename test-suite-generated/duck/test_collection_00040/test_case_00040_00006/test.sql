SELECT t2.*
FROM (VALUES (1000000)) t(_corr), LATERAL (
WITH RECURSIVE t AS
(
	SELECT 1 AS x
UNION
	SELECT SUM(x) AS x
	FROM t, a
	WHERE x < _corr
)
SELECT * FROM t) t2
ORDER BY 1 NULLS LAST;
