SELECT toString(toString(number + 1)) as val, count()
FROM numbers(2)
GROUP BY ALL
ORDER BY val;
