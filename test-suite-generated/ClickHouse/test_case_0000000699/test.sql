SELECT sumIfOrNull(number, number % 2 == 1) FILTER(WHERE 0) FROM numbers(100);
