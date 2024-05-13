SELECT max(abs(n) + 1), max(abs(n) + n), max(n - abs(n)), max(1 - abs(n)) FROM (SELECT number n FROM numbers(10));
