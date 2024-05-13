SELECT
    count() as d, a, b, c
FROM test02313
GROUP BY ROLLUP(a, b, c)
ORDER BY d, a, b, c;
