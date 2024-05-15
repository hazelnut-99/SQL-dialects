SELECT round(corrStable(x, y), 5) FROM (SELECT DISTINCT number % 10 AS x, number % 5 AS y FROM numbers(1000));
