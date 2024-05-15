SELECT sumIf(DISTINCT number % 10, number % 5 = 2) FROM numbers(10000);
