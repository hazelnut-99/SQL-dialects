SELECT maxIf(number::String, number % 3), maxIf(number::String, number % 5), minIf(number::String, number % 3), minIf(number::String, number > 10) from numbers(400);
