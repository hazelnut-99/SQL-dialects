SELECT round(corrStable(DISTINCT x, y), 5) FROM (SELECT number % 10 AS x, number % 5 AS y FROM numbers(1000));
