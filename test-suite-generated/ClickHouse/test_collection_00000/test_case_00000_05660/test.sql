SELECT min(n*n * 2), min(2 * n*n), min(n*n / 2), min(1 / n*n) FROM (SELECT number n FROM numbers(10));
