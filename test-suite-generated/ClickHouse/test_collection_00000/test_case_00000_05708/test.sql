SELECT sum(n*n + 1), sum(1 + n*n), sum(n*n - 1), sum(1 - n*n) FROM (SELECT number n FROM numbers(10));
