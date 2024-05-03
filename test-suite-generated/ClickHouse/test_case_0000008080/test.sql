SELECT count() OVER (ORDER BY number + 1) FROM numbers(10) ORDER BY number;
