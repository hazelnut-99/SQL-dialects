SELECT sumArgMax(number, tuple(number, repeat('a', (10 * (number % 100))::Int32))) FROM numbers(1000);
