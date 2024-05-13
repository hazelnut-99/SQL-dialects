SELECT max(n*n + 1), max(1 + n*n), max(n*n - 1), max(1 - n*n) FROM (SELECT number n FROM numbers(10));
