SELECT min(abs(2) + 1), min(abs(2) + n), min(n - abs(2)), min(1 - abs(2)) FROM (SELECT number n FROM numbers(10));
