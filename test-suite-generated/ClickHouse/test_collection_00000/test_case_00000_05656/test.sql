SELECT max(abs(n) * 2), max(abs(n) * n), max(n / abs(n)), max(1 / abs(n)) FROM (SELECT number n FROM numbers(10));
