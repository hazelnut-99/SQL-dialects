SELECT sum(n*n * 2), sum(2 * n*n), sum(n*n / 2), sum(1 / n*n) FROM (SELECT number n FROM numbers(10));
