SELECT maxIf(number::Float64, rand() % 2 == 3) from numbers(10);
