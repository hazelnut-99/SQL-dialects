SELECT min(abs(n) + 1), min(abs(n) + n), min(n - abs(n)), min(1 - abs(n)) FROM (SELECT number n FROM numbers(10));
