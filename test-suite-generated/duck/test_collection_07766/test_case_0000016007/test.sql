SELECT part, id, list_sort(list(val) OVER(PARTITION BY part))
FROM (SELECT range AS id, range % 5 AS part, range AS val FROM range(13)) t
ORDER BY ALL;
