select sumIf(number::Int256, number % 10 == 0) from numbers(1000);
