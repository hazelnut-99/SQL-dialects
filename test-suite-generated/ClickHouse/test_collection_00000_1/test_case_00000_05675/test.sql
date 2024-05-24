SELECT sum(n + 1) + sum(1 + n) + sum(n - 1) + sum(1 - n) FROM (SELECT number n FROM numbers(10));
