SELECT 1, b
FROM numbers(1)
ARRAY JOIN [materialize(3) IN (SELECT 42)] AS b
;
