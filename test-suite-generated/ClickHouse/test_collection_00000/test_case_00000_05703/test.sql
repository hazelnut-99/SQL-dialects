SELECT sum(abs(n) * 2), sum(abs(n) * n), sum(n / abs(n)), sum(1 / abs(n)) FROM (SELECT number n FROM numbers(10));
