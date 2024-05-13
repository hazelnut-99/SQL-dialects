SELECT max(1 + n + 1), max(1 + 1 + n), max(1 + n - 1), max(1 + 1 - n) FROM (SELECT number n FROM numbers(10));
