SELECT max(n*n * 2), max(2 * n*n), max(n*n / 2), max(1 / n*n) FROM (SELECT number n FROM numbers(10));
