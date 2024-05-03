SELECT sumIfOrNull(number, number % 2 == 1) FILTER(WHERE 1) FROM numbers(100);
