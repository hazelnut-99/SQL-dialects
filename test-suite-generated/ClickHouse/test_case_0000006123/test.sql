select sumIf(number::Decimal256(3), number % 10 == 0) from numbers(1000);
