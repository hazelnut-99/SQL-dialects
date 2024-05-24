SELECT min(n + 1), min(1 + n), min(n - 1), min(1 - n) FROM (SELECT number n FROM numbers(10));
