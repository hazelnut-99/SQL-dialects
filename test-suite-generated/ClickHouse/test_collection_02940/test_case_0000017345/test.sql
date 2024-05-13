SELECT sum(number) FILTER(WHERE number % 2 == 0) FROM numbers(100);
