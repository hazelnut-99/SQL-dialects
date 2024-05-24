SELECT * APPLY lambda(tuple(x), x + 1) FROM numbers(5);
