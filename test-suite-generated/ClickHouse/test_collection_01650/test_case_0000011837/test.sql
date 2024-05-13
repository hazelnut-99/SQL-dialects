SELECT min(n * 2) + min(2 * n) + min(n / 2) + min(1 / n) FROM (SELECT number n FROM numbers(10));
