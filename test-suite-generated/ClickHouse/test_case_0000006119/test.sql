select sumIf(number::UInt128, number % 10 == 0) from numbers(1000);
