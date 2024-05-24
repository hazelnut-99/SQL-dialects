SELECT sum(n * 2) + sum(2 * n) + sum(n / 2) + sum(1 / n) FROM (SELECT number n FROM numbers(10));
