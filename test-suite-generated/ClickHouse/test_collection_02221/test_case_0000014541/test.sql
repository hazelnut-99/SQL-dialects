SELECT
    max(number) OVER (ORDER BY number DESC NULLS FIRST),
    max(number) OVER (ORDER BY number ASC NULLS FIRST)
FROM numbers(2)
;
