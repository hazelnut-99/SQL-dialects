SELECT max(abs(2) * 2), max(abs(2) * n), max(n / abs(2)), max(1 / abs(2)) FROM (SELECT number n FROM numbers(10));
