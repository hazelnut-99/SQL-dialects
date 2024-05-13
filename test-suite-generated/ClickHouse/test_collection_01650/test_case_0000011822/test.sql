SELECT sum(1 + n + 1), sum(1 + 1 + n), sum(1 + n - 1), sum(1 + 1 - n) FROM (SELECT number n FROM numbers(10));
