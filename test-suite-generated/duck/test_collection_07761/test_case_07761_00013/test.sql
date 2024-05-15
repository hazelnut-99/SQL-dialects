SELECT part, id, sum(val) OVER(PARTITION BY part ORDER BY id), lead(val) OVER(PARTITION BY part ORDER BY id)
FROM (SELECT range AS id, range % 5 AS part, range AS val FROM range(13)) t
ORDER BY ALL;
