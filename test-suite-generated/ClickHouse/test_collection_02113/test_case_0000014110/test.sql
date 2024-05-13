SELECT number % 3 + 1 AS n, min(n), max(n) FROM numbers(100) GROUP BY n WITH ROLLUP;
