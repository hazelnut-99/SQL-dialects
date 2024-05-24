SELECT max(n + 1) + max(1 + n) + max(n - 1) + max(1 - n) FROM (SELECT number n FROM numbers(10));
