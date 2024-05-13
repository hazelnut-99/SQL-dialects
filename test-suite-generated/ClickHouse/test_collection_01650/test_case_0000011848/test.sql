SELECT max(n * 2), max(2 * n), max(n / 2), max(1 / n) FROM (SELECT number n FROM numbers(10));
